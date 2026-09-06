--[[
Compile ```{.tikzcd}``` and ```{.mathpar}``` code blocks to SVG via
latex + dvisvgm.
]]

PANDOC_VERSION:must_be_at_least '3.0'

local system = require 'pandoc.system'
local utils = require 'pandoc.utils'
local stringify = utils.stringify

local function which(name)
  local ok, result = pcall(pandoc.pipe, 'which', {name}, '')
  if ok then
    local p = result:gsub('%s+$', '')
    if p ~= '' then return p end
  end
  local home = os.getenv 'HOME' or ''
  local extra = {
    home .. '/Library/TinyTeX/bin/universal-darwin/' .. name,
    home .. '/Library/TinyTeX/bin/aarch64-darwin/' .. name,
    home .. '/Library/TinyTeX/bin/x86_64-darwin/' .. name,
    '/Library/TeX/texbin/' .. name,
    '/opt/homebrew/bin/' .. name,
    '/usr/local/bin/' .. name,
    '/Applications/Inkscape.app/Contents/MacOS/' .. name,
  }
  for _, candidate in ipairs(extra) do
    local fh = io.open(candidate, 'r')
    if fh then
      fh:close()
      return candidate
    end
  end
  return nil
end

local latex_bin = which 'latex'
local dvisvgm_bin = which 'dvisvgm'
local html_format = FORMAT == 'html' or FORMAT == 'revealjs' or FORMAT:match '^html'
local default_zoom = 2.6

local function read_file(filepath)
  local fh = io.open(filepath, 'rb')
  if not fh then return nil end
  local contents = fh:read 'a'
  fh:close()
  return contents
end

local function write_file(filepath, content)
  local fh = io.open(filepath, 'wb')
  fh:write(content)
  fh:close()
end

local function meta_table(meta, key)
  local v = meta[key]
  return (v and type(v) == 'table') and v or {}
end

local function extra_preamble(meta, kind)
  local conf = meta_table(meta, kind)
  local extra = conf['header-includes'] or conf['extra-packages'] or ''
  if type(extra) ~= 'string' then
    extra = stringify(extra)
  end
  return extra
end

local function zoom_from(meta, attribs, kind)
  local conf = meta_table(meta, kind)
  local fallback = meta_table(meta, 'tikzcd')
  local z = attribs.scale or attribs.zoom
    or conf.scale or conf.zoom
    or fallback.scale or fallback.zoom
    or default_zoom
  if type(z) ~= 'string' and type(z) ~= 'number' then
    z = stringify(z)
  end
  return tostring(z)
end

local function block_kind(block)
  for _, cls in ipairs(block.classes) do
    if cls == 'tikzcd' or cls == 'tikz-cd' then
      return 'tikzcd'
    end
    if cls == 'mathpar' or cls == 'mathpartir' or cls == 'inferrule' then
      return 'mathpar'
    end
  end
  return nil
end

local function as_tikzcd(src)
  if src:match '\\begin%s*{tikzcd}' then
    return src
  end
  return '\\begin{tikzcd}\n' .. src .. '\n\\end{tikzcd}'
end

local function as_mathpar(src)
  if src:match '\\begin%s*{mathpar}' or src:match '\\begin%s*{displaymath}' then
    return src
  end
  return '\\begin{mathpar}\n' .. src .. '\n\\end{mathpar}'
end

local function wrap_tex(kind, src, preamble)
  local body, driver
  if kind == 'tikzcd' then
    driver = '\\def\\pgfsysdriver{pgfsys-dvisvgm.def}\n'
    body = as_tikzcd(src)
  else
    driver = ''
    body = as_mathpar(src)
  end
  return table.concat({
    '\\documentclass{article}',
    '\\usepackage[active,tightpage]{preview}',
    driver,
    '\\usepackage{amsmath,amssymb}',
    '\\usepackage{tikz-cd}',
    '\\usepackage{mathpartir}',
    preamble,
    '\\begin{document}',
    '\\begin{preview}',
    body,
    '\\end{preview}',
    '\\end{document}',
    '',
  }, '\n')
end

local function compile_svg(kind, src, preamble, zoom)
  return system.with_temporary_directory(kind, function(tmpdir)
    return system.with_working_directory(tmpdir, function()
      local tex_file = 'diagram.tex'
      local dvi_file = 'diagram.dvi'
      local svg_file = 'diagram.svg'
      write_file(tex_file, wrap_tex(kind, src, preamble))

      local ok, result = pcall(
        pandoc.pipe,
        latex_bin,
        {
          '-interaction=nonstopmode',
          '-halt-on-error',
          '-output-directory',
          tmpdir,
          tex_file,
        },
        ''
      )
      if not ok then
        error(kind .. ': latex failed:\n' .. tostring(result), 0)
      end
      if not read_file(dvi_file) then
        error(kind .. ': latex produced no DVI. Log:\n' .. tostring(result), 0)
      end

      ok, result = pcall(
        pandoc.pipe,
        dvisvgm_bin,
        { '--no-fonts', '--bbox=min', '--zoom=' .. zoom, '-o', svg_file, dvi_file },
        ''
      )
      if not ok then
        error(kind .. ': dvisvgm failed:\n' .. tostring(result), 0)
      end
      local svg = read_file(svg_file)
      if not svg then
        error(kind .. ': dvisvgm produced no SVG. Output:\n' .. tostring(result), 0)
      end
      return svg
    end)
  end)
end

local function for_tikzjax(src)
  local body = as_tikzcd(src)
  if not body:match 'ampersand replacement' then
    body = body:gsub('\\begin{tikzcd}%s*%[', '\\begin{tikzcd}[ampersand replacement=\\&, ', 1)
    body = body:gsub('\\begin{tikzcd}(%s*\n)', '\\begin{tikzcd}[ampersand replacement=\\&]%1', 1)
  end
  body = body:gsub('\\&', '\1')
  body = body:gsub('&', '\\&')
  body = body:gsub('\1', '\\&')
  return body
end

local function tikzjax_block(src)
  local html = string.format(
    '<div class="tikzcd">\n<script type="text/tikz">\n%s\n</script>\n</div>',
    for_tikzjax(src)
  )
  return pandoc.RawBlock('html', html)
end

return {
  {
    Pandoc = function(doc)
      local use_local = latex_bin and dvisvgm_bin
      if not use_local then
        if html_format then
          io.stderr:write(
            'tikzcd.lua: latex/dvisvgm not found; TikZJax fallback is tikzcd-only\n'
          )
        else
          io.stderr:write('tikzcd.lua: latex/dvisvgm not found\n')
          return doc
        end
      else
        io.stderr:write(
          'tikzcd.lua: compiling with ' .. latex_bin .. ' and ' .. dvisvgm_bin .. '\n'
        )
      end

      local preambles = {
        tikzcd = extra_preamble(doc.meta, 'tikzcd'),
        mathpar = extra_preamble(doc.meta, 'mathpar'),
      }

      return doc:walk {
        CodeBlock = function(block)
          local kind = block_kind(block)
          if not kind then
            return nil
          end

          if use_local then
            local zoom = zoom_from(doc.meta, block.attributes, kind)
            local svg = compile_svg(kind, block.text, preambles[kind], zoom)
            local fname = pandoc.sha1(kind .. block.text .. '\nzoom=' .. zoom) .. '.svg'
            pandoc.mediabag.insert(fname, 'image/svg+xml', svg)
            local classes = {kind}
            for _, cls in ipairs(block.classes) do
              if cls ~= kind and cls ~= 'tikz-cd' and cls ~= 'mathpartir' and cls ~= 'inferrule' then
                table.insert(classes, cls)
              end
            end
            local attr = pandoc.Attr(block.identifier, classes, block.attributes)
            return pandoc.Para {pandoc.Image({}, fname, '', attr)}
          end

          if kind == 'tikzcd' then
            return tikzjax_block(block.text)
          end
          io.stderr:write('tikzcd.lua: cannot emit mathpar without latex\n')
          return nil
        end,
      }
    end,
  },
}
