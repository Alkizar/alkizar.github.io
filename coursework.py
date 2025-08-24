def parse_course_line(s):
  # (DEPT NUM) TITLE
  start_code = s.index('(')
  end_code = s.index(')')
  code = s[start_code + 1 : end_code]
  title = s[end_code + 2:]
  return '<li id="wrapper" class="small-line"><div class="align-left">' + code + '</div><div class="align-center">' + title + '</div></li><style>div.align-left {text-align:left;padding:0;margin:0;position:absolute;}div.align-center{  text-align: center;  margin-left: -50px;}</style>'

def parse_course_list(s):
  lines = s.split('\n')
  parsed_lines = list(map(parse_course_line, lines))
  return '\n    '.join(parsed_lines)

def parse_term(s):
  # [TERM, UNI]\nCOURSES # TODO -- university
  start_term = s.index('[')
  end_term = s.index(']')
  term = s[start_term + 1 : end_term]
  courses = s[end_term + 2 :]
  # TODO -- update the ids too!
  return '<div id=\'content' + term + '\' style="display: none;">\n  <strong>' + term + '</strong>\n  <br>\n  <i> UC Berkeley </i>\n  <hr style="width:200px;text-align:left;margin-left:0">\n<ul>\n' + parse_course_list(courses) + '\n  </ul>\n</div>'

if __name__ == '__main__':
  print(parse_term('[Fall 2019]\n(MATH H104) Intro to Anal\n(CS 1) a class'))