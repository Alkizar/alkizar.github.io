---
layout: archive
title: "CV"
permalink: /cv/
author_profile: true
redirect_from:
  - /resume
---

<hr style="width:200px;text-align:left;margin-left:0">

{% include base_path %}

Education
======
* M.S. in Computer Science, Stanford University, 2026
  * Relevant Coursework: Domain-Specific Languages, Program Analysis and Compiler Optimizations, Programming Languages, Automated Reasoning
* B.A. in Mathematics, UC Berkeley, 2023
  * Honors: Graduated with highest honors in mathematics and general scholarship, Recipient of the <a href="https://math.berkeley.edu/about/honors-awards/dorothea-klumpke-roberts-prize">Dorothea Klumpke Roberts prize</a>

Work Experience
======
* Summer 2026: Research Associate
  * Topos Institute
  * Developed a DSL for use in <a href="https://topos.institute/work/catcolab/">CatColab</a>'s categorical logic package, which facilitates the implementation of general modal double theories. [TODO]-link to repo once made public
  * Supervisor: Evan Patterson

* Summer 2024: Student Assistant
  * San Francisco State University
  * Duties included: Writing course notes (code and exposition) for mechanistic interpretability seminar
  * Advised by Prof. Daniel Huang

* Fall 2023: Course Reader
  * UC Berkeley
  * Duties included: Grading student assignments for courses in mathematical logic, computability theory, and algebraic topology
  * Supervised by Prof. Antonio Montalban and Prof. John Lott

* Summer 2022: Undergraduate Research Fellow
  * University of Chicago
  * Duties included: Conducting research in stable homotopy theory and category theory; see <a href="google.com">my senior thesis</a>
  * Advised by Prof. J. Peter May
  
Technical Skills
======
* Languages:
  * Rust
  * C/C++
  * Lean
  * Haskell
  * Agda
  * Python
  * Java
* Toolkits:
  * LLVM
  * Yacc
  * Flex
  * NumPY
  * PyTorch
  * SciPy
* Other:
  * LaTeX
  * CUDA
  * cvc5
  * egglog
  * AWS Neuron

Projects
======
  <ul>{% for post in site.publications reversed %}
    {% include archive-single-cv.html %}
  {% endfor %}</ul>
  
Teaching
======
  <ul>{% for post in site.teaching reversed %}
    {% include archive-single-cv.html %}
  {% endfor %}</ul>
  
Service and Leadership
======
* Former president of the <a href="https://math.berkeley.edu/~musa/">Mathematics Undergraduate Student Association</a> at UC Berkeley
* Programming mentor for <a href="https://www.thebluealliance.com/team/4186">FIRST Robotics Competition team 4186</a>