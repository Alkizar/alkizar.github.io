from functools import reduce

def parse_course_line(s):
  # (DEPT NUM) TITLE
  start_code = s.index('(')
  end_code = s.index(')')
  code = s[start_code + 1 : end_code]
  title = s[end_code + 2:].strip(' ')
  return '<li id="wrapper" class="small-line"><div class="align-left">' + code + '</div><div class="align-center">' + title + '</div></li><style>div.align-left {text-align:left;padding:0;margin:0;position:absolute;}div.align-center{  text-align: center;  margin-left: -50px;}</style>'

def parse_course_list(s):
  # COURSE\nCOURSE\n...
  s = s.strip('\n')
  lines = s.split('\n')
  parsed_lines = list(map(parse_course_line, lines))
  return '\n    '.join(parsed_lines)

def parse_term(s, uni):
  # [TERM]\nCOURSES
  start_term = s.index('[')
  end_term = s.index(']')
  term = s[start_term + 1 : end_term].strip(' ')
  corrected_term = term.replace(' ', '_')
  courses = s[end_term + 2 :]
  return '<div id=\'content' + corrected_term + '\' style="display: none;">\n  <strong>' + term + '</strong>\n  <br>\n  <i>' + uni + '</i>\n  <hr style="width:200px;text-align:left;margin-left:0">\n<ul>\n' + parse_course_list(courses) + '\n  </ul>\n</div>', corrected_term

def parse_terms(s, uni):
  # *TERM\n*TERM\n...
  terms = s.split('*')[1:]
  parsed_terms = [parse_term(t.strip(' '), uni) for t in terms]
  parsed_term_labels = [p[1] for p in parsed_terms]
  parsed_term_content = '\n'.join(list(map(lambda x : x[0], parsed_terms)))

  return parsed_term_content, parsed_term_labels

def parse_uni(s):
  # <UNI>\nTERMS
  start_uni = s.index('<')
  end_uni = s.index('>')
  uni = s[start_uni + 1 : end_uni]
  terms = s[end_uni + 2 :]
  term_content, labels = parse_terms(terms, uni)
  return term_content, labels#, uni

def parse_content(s):
  # !<UNI>\nTERMS\n!<UNI>\nTERMS...
  unis = s.split('!')[1:]
  parsed_unis = list(map(parse_uni, unis))
  content = '\n'.join([u[0] for u in parsed_unis])
  labels = reduce(lambda x, y : x + y, [u[1] for u in parsed_unis], [])
  select = '<label for=\'term\'>Academic Term</label>\n<select id=\'term\' style="display: block; color: #000000">\n  <option value="" disabled selected>Academic Term</option>'
  for label in labels:
    select += '\n  <option value="' + label + '">' + label + '</option>'
  select += '\n</select>'
  func = '<script>\ndocument.getElementById(\'term\').onchange = function() {\n  var selectedValue = this.value;\n'
  for label in labels:
    func += '\n  document.getElementById(\'content' + label + '\'.style.display = \'none\';'
  func += '\n  document.getElementById(\'content\' + selectedValue).style.display = \'block\';\n};\n</script>\n'
  return content, select, func

"""
<script>
document.getElementById('term').onchange = function() {
  var selectedValue = this.value;
  document.getElementById('contentf19').style.display = 'none';
  document.getElementById('contents20').style.display = 'none';
  document.getElementById('content' + selectedValue).style.display = 'block';
};
</script>
"""

S = """
!<UC Berkeley>
  *[Fall 2019]
    (MATH H104) (Honors) Introduction to Analysis
    (CS 61A) Structure and Interpretation of Computer Programs
    (MUSA 74) Introduction to Proofs
    (ASTRON C10) General Astronomy
  *[Spring 2020]
    (MATH H113) (Honors) Introduction to Abstract Algebra
    (MATH 110) Linear Algebra
    (STAT 33B) Introduction to Advanced Programming in R
    (PHILOS 5) Science and Human Understanding
"""

if __name__ == '__main__':
  #with open(path, 'r') as file:
  #  s = file.read()
  #print(parse_uni('<UC Berkeley>\n*[Fall 2019]\n(MATH H104) Intro to Anal\n(CS 1) a class\n*[Spring 2020]\n(MATH 113) Abstract Alg\n(CS 2) A Computer'))
  #l = [[1, 2], [3, 4, 5]]
  #print(reduce(lambda x, y: x + y, [l[i] for i in [0, 1]], []))
  content, select, func = parse_content(S)
  print(select)
  print(content)
  print(func)
