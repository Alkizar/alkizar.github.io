---
permalink: /
title: "Bryce Goldman"
author_profile: true
redirect_from: 
  - /about/
  - /about.html
---

I am a research software developer working in applied category theory, compilers, and formal methods. I completed my M.S. in computer science at Stanford University in 2026, and my B.A. in mathematics at UC Berkeley in 2023. I am broadly interested in applying tools from category theory to programming languages, type theory, automated reasoning, and computational logic. 

Current Work
======
---

Theorae ⊆ CatColab
------

I am currently working on <a href='https://topos.institute/work/catcolab/'>CatColab</a>'s DoubleTT project at the <a href='https://topos.institute/'>Topos Institute</a> in Berkeley, CA. This summer I am implementing Theorae (WIP title), a DSL for specifying modal double theories, in as much generality as the system will allow without becoming cumbersome for the user. 

Double Category Theory in Lean
------

A project I began towards the end of my program at Stanford, and which I have continued working on in my spare time. My (optimistic) goal is to implement a library in Lean4 that encompasses all of the essential tools of (virtual) double category theory routinely used by applied category theorists. The ergonomics of this library are particularly important, and currently one of the main challenges to this project --- there is a great deal of friction between the multi-dimensionality of double categories and the desire to stay as far from dependent type hell as possible. At the moment I am working on navigating this tension in the core structures of the library, and hope to arrive at a compromise between a faithful encoding of the mathematical definitions and a Not Terrible To Use™ interface.

Type Set Specialization
------

Type set specialization is an extension of the Lambda Set Specialization (LSS) algorithm for terms of arbitrary types which I spent some time collaborating with <a href='https://benjamindriscoll.com/'>Ben Driscoll</a> on during my time at Stanford. The idea behind this generalization is a kind of extra-juiced constant propagation at the type level, to expose type-theoretic optimizations to the compiler using the same mechanism as LSS.


[TODO]
DELETE UNDER THIS
======




as an engineering research associate at the Topos Institute's office in Berkeley, CA. This summer I am implementing a DSL for

Bryce Goldman is an engineering RA working on CatColab’s Double TT project with Evan Patterson this summer. He will be implementing a DSL for specifying modal theories and refining the TT package using a type theory for virtual double categories. Bryce recently completed his M.S. in computer science at Stanford, and is broadly interested in compilers, programming languages, and formal methods (and applications of category theory therein).


Currently I spend a lot of time thinking about the Morphic compiler, and I'm working on trying to generalize the compiler's Lambda Set Specialization algorithm. I am hoping to extend LSS to the dependently-typed setting, and enable greater precision in the compiler's inference of certain type constraints for better code generation.

In my spare time, I've begun writing a compiler in Rust for a functional programming language of my own design. This is mostly to practice working with Rust, but I also plan to use this as an opportunity to get my hands dirty with using an LLVM backend. I am also porting over to Rust a command-line tool I originally wrote in Python with a friend in 2024, for computing statistics on decklists scraped from online Magic the Gathering tournaments. I used this tool last year to study the metagame leading up to the Pioneer Regional Championship in DC, and hope to do the same this year to prepare for the RC in Las Vegas (ideally with a much cleaner and more efficient codebase this time).

Lastly, I am working on reformulating data flow analysis as a functorial construct, to capture the duality of direction and compositionality (see partial redundancy elimination) of the data flow algorithm. I've had to put this idea on hold for the time being, to focus on my classes and other projects.

Coursework
------

<label for='term'>Academic Term</label>
<select id='term' style="display: block; color: #000000">
  <option value="" disabled selected>Academic Term</option>
  <option value="Winter_2026">Winter 2026</option>
  <option value="Fall_2025">Fall 2025</option>
  <option value="Summer_2025">Summer 2025</option>
  <option value="Spring_2025">Spring 2025</option>
  <option value="Winter_2025">Winter 2025</option>
  <option value="Fall_2024">Fall 2024</option>
  <option value="Spring_2024">Spring 2024</option>
  <option value="Spring_2023">Spring 2023</option>
  <option value="Fall_2022">Fall 2022</option>
  <option value="Spring_2022">Spring 2022</option>
  <option value="Fall_2021">Fall 2021</option>
  <option value="Summer_2021">Summer 2021</option>
  <option value="Spring_2021">Spring 2021</option>
  <option value="Fall_2020">Fall 2020</option>
  <option value="Summer_2020">Summer 2020</option>
  <option value="Spring_2020">Spring 2020</option>
  <option value="Fall_2019">Fall 2019</option>
</select>
<div id='contentWinter_2026' style="display: none;">
  <strong>Winter 2026</strong>
  <br>
  <i>Stanford University</i>
  <hr style="width:200px;text-align:left;margin-left:0">
<ul>
    <li id="wrapper" class="small-line"><div class="align-left">CS 343D</div><div class="align-center">Domain-Specific Compilers</div></li><style>div.align-left {text-align:left;padding:0;margin:0;position:absolute;}div.align-center{  text-align: center;  margin-left: -50px;}</style>
    <li id="wrapper" class="small-line"><div class="align-left">CS 257</div><div class="align-center">Introduction to Automated Reasoning</div></li><style>div.align-left {text-align:left;padding:0;margin:0;position:absolute;}div.align-center{  text-align: center;  margin-left: -50px;}</style>
    <li id="wrapper" class="small-line"><div class="align-left">CS 255</div><div class="align-center">Cryptography</div></li><style>div.align-left {text-align:left;padding:0;margin:0;position:absolute;}div.align-center{  text-align: center;  margin-left: -50px;}</style>
  </ul>
</div>
<div id='contentFall_2025' style="display: none;">
  <strong>Fall 2025</strong>
  <br>
  <i>Stanford University</i>
  <hr style="width:200px;text-align:left;margin-left:0">
<ul>
    <li id="wrapper" class="small-line"><div class="align-left">CS 221</div><div class="align-center">Artificial Intelligence</div></li><style>div.align-left {text-align:left;padding:0;margin:0;position:absolute;}div.align-center{  text-align: center;  margin-left: -50px;}</style>
    <li id="wrapper" class="small-line"><div class="align-left">CS 157</div><div class="align-center">Computational Logic</div></li><style>div.align-left {text-align:left;padding:0;margin:0;position:absolute;}div.align-center{  text-align: center;  margin-left: -50px;}</style>
    <li id="wrapper" class="small-line"><div class="align-left">CS 149</div><div class="align-center">Parallel Computing</div></li><style>div.align-left {text-align:left;padding:0;margin:0;position:absolute;}div.align-center{  text-align: center;  margin-left: -50px;}</style>
  </ul>
</div>
<div id='contentSummer_2025' style="display: none;">
  <strong>Summer 2025</strong>
  <br>
  <i>Stanford University</i>
  <hr style="width:200px;text-align:left;margin-left:0">
<ul>
<li id="wrapper" class="small-line"><div class="align-left">CS 109</div><div class="align-center">Introduction to Probability</div></li><style>div.align-left {text-align:left;padding:0;margin:0;position:absolute;}div.align-center{  text-align: center;  margin-left: -50px;}</style>
    <li id="wrapper" class="small-line"><div class="align-left">CS 107</div><div class="align-center">Computer Organization and Systems</div></li><style>div.align-left {text-align:left;padding:0;margin:0;position:absolute;}div.align-center{  text-align: center;  margin-left: -50px;}</style>
  </ul>
</div>
<div id='contentSpring_2025' style="display: none;">
  <strong>Spring 2025</strong>
  <br>
  <i>Stanford University</i>
  <hr style="width:200px;text-align:left;margin-left:0">
<ul>
<li id="wrapper" class="small-line"><div class="align-left">CS 233</div><div class="align-center">Geometric and Topological Data Analysis</div></li><style>div.align-left {text-align:left;padding:0;margin:0;position:absolute;}div.align-center{  text-align: center;  margin-left: -50px;}</style>
    <li id="wrapper" class="small-line"><div class="align-left">CS 155</div><div class="align-center">Computer and Network Security</div></li><style>div.align-left {text-align:left;padding:0;margin:0;position:absolute;}div.align-center{  text-align: center;  margin-left: -50px;}</style>
    <li id="wrapper" class="small-line"><div class="align-left">CS 143</div><div class="align-center">Compilers</div></li><style>div.align-left {text-align:left;padding:0;margin:0;position:absolute;}div.align-center{  text-align: center;  margin-left: -50px;}</style>
  </ul>
</div>
<div id='contentWinter_2025' style="display: none;">
  <strong>Winter 2025</strong>
  <br>
  <i>Stanford University</i>
  <hr style="width:200px;text-align:left;margin-left:0">
<ul>
<li id="wrapper" class="small-line"><div class="align-left">CS 243</div><div class="align-center">Program Analysis and Optimizations</div></li><style>div.align-left {text-align:left;padding:0;margin:0;position:absolute;}div.align-center{  text-align: center;  margin-left: -50px;}</style>
    <li id="wrapper" class="small-line"><div class="align-left">CS 229</div><div class="align-center">Machine Learning</div></li><style>div.align-left {text-align:left;padding:0;margin:0;position:absolute;}div.align-center{  text-align: center;  margin-left: -50px;}</style>
  </ul>
</div>
<div id='contentFall_2024' style="display: none;">
  <strong>Fall 2024</strong>
  <br>
  <i>Stanford University</i>
  <hr style="width:200px;text-align:left;margin-left:0">
<ul>
<li id="wrapper" class="small-line"><div class="align-left">CS 242</div><div class="align-center">Programming Languages</div></li><style>div.align-left {text-align:left;padding:0;margin:0;position:absolute;}div.align-center{  text-align: center;  margin-left: -50px;}</style>
    <li id="wrapper" class="small-line"><div class="align-left">CS 161</div><div class="align-center">Design and Analysis of Algorithms</div></li><style>div.align-left {text-align:left;padding:0;margin:0;position:absolute;}div.align-center{  text-align: center;  margin-left: -50px;}</style>
    <li id="wrapper" class="small-line"><div class="align-left">CS 154</div><div class="align-center">Introduction to the Theory of Computation</div></li><style>div.align-left {text-align:left;padding:0;margin:0;position:absolute;}div.align-center{  text-align: center;  margin-left: -50px;}</style>
  </ul>
</div>
<div id='contentSpring_2024' style="display: none;">
  <strong>Spring 2024</strong>
  <br>
  <i>San Fransisco State University</i>
  <hr style="width:200px;text-align:left;margin-left:0">
<ul>
<li id="wrapper" class="small-line"><div class="align-left">CS 747</div><div class="align-center">Introduction to Quantum Computing</div></li><style>div.align-left {text-align:left;padding:0;margin:0;position:absolute;}div.align-center{  text-align: center;  margin-left: -50px;}</style>
    <li id="wrapper" class="small-line"><div class="align-left">CS 415</div><div class="align-center">Operating System Principles</div></li><style>div.align-left {text-align:left;padding:0;margin:0;position:absolute;}div.align-center{  text-align: center;  margin-left: -50px;}</style>
    <li id="wrapper" class="small-line"><div class="align-left">CS 413</div><div class="align-center">Software Development</div></li><style>div.align-left {text-align:left;padding:0;margin:0;position:absolute;}div.align-center{  text-align: center;  margin-left: -50px;}</style>
  </ul>
</div>
<div id='contentSpring_2023' style="display: none;">
  <strong>Spring 2023</strong>
  <br>
  <i>UC Berkeley</i>
  <hr style="width:200px;text-align:left;margin-left:0">
<ul>
<li id="wrapper" class="small-line"><div class="align-left">MATH 253</div><div class="align-center">Homological Algebra</div></li><style>div.align-left {text-align:left;padding:0;margin:0;position:absolute;}div.align-center{  text-align: center;  margin-left: -50px;}</style>
    <li id="wrapper" class="small-line"><div class="align-left">MATH 199</div><div class="align-center">Independent Study (Teaching <a href="https://alkizar.github.io/teaching/musa174">MUSA 174</a>)</div></li><style>div.align-left {text-align:left;padding:0;margin:0;position:absolute;}div.align-center{  text-align: center;  margin-left: -50px;}</style>
    <li id="wrapper" class="small-line"><div class="align-left">MATH 196</div><div class="align-center">Honors Thesis</div></li><style>div.align-left {text-align:left;padding:0;margin:0;position:absolute;}div.align-center{  text-align: center;  margin-left: -50px;}</style>
    <li id="wrapper" class="small-line"><div class="align-left">COGSCI 131</div><div class="align-center">Computational Models of Cognition</div></li><style>div.align-left {text-align:left;padding:0;margin:0;position:absolute;}div.align-center{  text-align: center;  margin-left: -50px;}</style>
  </ul>
</div>
<div id='contentFall_2022' style="display: none;">
  <strong>Fall 2022</strong>
  <br>
  <i>UC Berkeley</i>
  <hr style="width:200px;text-align:left;margin-left:0">
<ul>
<li id="wrapper" class="small-line"><div class="align-left">MATH 256A</div><div class="align-center">Algebraic Geometry</div></li><style>div.align-left {text-align:left;padding:0;margin:0;position:absolute;}div.align-center{  text-align: center;  margin-left: -50px;}</style>
    <li id="wrapper" class="small-line"><div class="align-left">CS 61B</div><div class="align-center">Data Structures</div></li><style>div.align-left {text-align:left;padding:0;margin:0;position:absolute;}div.align-center{  text-align: center;  margin-left: -50px;}</style>
  </ul>
</div>
<div id='contentSpring_2022' style="display: none;">
  <strong>Spring 2022</strong>
  <br>
  <i>UC Berkeley</i>
  <hr style="width:200px;text-align:left;margin-left:0">
<ul>
<li id="wrapper" class="small-line"><div class="align-left">MATH 215B</div><div class="align-center">Homotopy Theory</div></li><style>div.align-left {text-align:left;padding:0;margin:0;position:absolute;}div.align-center{  text-align: center;  margin-left: -50px;}</style>
    <li id="wrapper" class="small-line"><div class="align-left">MATH 199</div><div class="align-center">Independent Study (Teaching <a href="https://alkizar.github.io/teaching/musa174">MUSA 174</a>)</div></li><style>div.align-left {text-align:left;padding:0;margin:0;position:absolute;}div.align-center{  text-align: center;  margin-left: -50px;}</style>
    <li id="wrapper" class="small-line"><div class="align-left">MATH 199</div><div class="align-center">Independent Study (Categorical Homotopy Theory)</div></li><style>div.align-left {text-align:left;padding:0;margin:0;position:absolute;}div.align-center{  text-align: center;  margin-left: -50px;}</style>
    <li id="wrapper" class="small-line"><div class="align-left">MATH 136</div><div class="align-center">Incompleteness and Undecidability</div></li><style>div.align-left {text-align:left;padding:0;margin:0;position:absolute;}div.align-center{  text-align: center;  margin-left: -50px;}</style>
  </ul>
</div>
<div id='contentFall_2021' style="display: none;">
  <strong>Fall 2021</strong>
  <br>
  <i>UC Berkeley</i>
  <hr style="width:200px;text-align:left;margin-left:0">
<ul>
<li id="wrapper" class="small-line"><div class="align-left">MATH 215A</div><div class="align-center">Algebraic Topology</div></li><style>div.align-left {text-align:left;padding:0;margin:0;position:absolute;}div.align-center{  text-align: center;  margin-left: -50px;}</style>
    <li id="wrapper" class="small-line"><div class="align-left">MATH 202A</div><div class="align-center">Topology and Analysis</div></li><style>div.align-left {text-align:left;padding:0;margin:0;position:absolute;}div.align-center{  text-align: center;  margin-left: -50px;}</style>
    <li id="wrapper" class="small-line"><div class="align-left">MATH 125A</div><div class="align-center">Mathematical Logic</div></li><style>div.align-left {text-align:left;padding:0;margin:0;position:absolute;}div.align-center{  text-align: center;  margin-left: -50px;}</style>
  </ul>
</div>
<div id='contentSummer_2021' style="display: none;">
  <strong>Summer 2021</strong>
  <br>
  <i>UC Berkeley</i>
  <hr style="width:200px;text-align:left;margin-left:0">
<ul>
<li id="wrapper" class="small-line"><div class="align-left">ISF 100D</div><div class="align-center">Technology, Society, and Culture</div></li><style>div.align-left {text-align:left;padding:0;margin:0;position:absolute;}div.align-center{  text-align: center;  margin-left: -50px;}</style>
  </ul>
</div>
<div id='contentSpring_2021' style="display: none;">
  <strong>Spring 2021</strong>
  <br>
  <i>UC Berkeley</i>
  <hr style="width:200px;text-align:left;margin-left:0">
<ul>
<li id="wrapper" class="small-line"><div class="align-left">MATH 250B</div><div class="align-center">Commutative Algebra</div></li><style>div.align-left {text-align:left;padding:0;margin:0;position:absolute;}div.align-center{  text-align: center;  margin-left: -50px;}</style>
    <li id="wrapper" class="small-line"><div class="align-left">MATH 199</div><div class="align-center">Independent Study (Teaching <a href="https://alkizar.github.io/teaching/musa74">MUSA 74</a>)</div></li><style>div.align-left {text-align:left;padding:0;margin:0;position:absolute;}div.align-center{  text-align: center;  margin-left: -50px;}</style>
    <li id="wrapper" class="small-line"><div class="align-left">MATH 199</div><div class="align-center">Independent Study (Homological Algebra)</div></li><style>div.align-left {text-align:left;padding:0;margin:0;position:absolute;}div.align-center{  text-align: center;  margin-left: -50px;}</style>
    <li id="wrapper" class="small-line"><div class="align-left">MATH 185</div><div class="align-center">Complex Analysis</div></li><style>div.align-left {text-align:left;padding:0;margin:0;position:absolute;}div.align-center{  text-align: center;  margin-left: -50px;}</style>
    <li id="wrapper" class="small-line"><div class="align-left">MATH 160</div><div class="align-center">History of Mathematics</div></li><style>div.align-left {text-align:left;padding:0;margin:0;position:absolute;}div.align-center{  text-align: center;  margin-left: -50px;}</style>
  </ul>
</div>
<div id='contentFall_2020' style="display: none;">
  <strong>Fall 2020</strong>
  <br>
  <i>UC Berkeley</i>
  <hr style="width:200px;text-align:left;margin-left:0">
<ul>
<li id="wrapper" class="small-line"><div class="align-left">MATH 250A</div><div class="align-center">Groups, Rings, and Fields</div></li><style>div.align-left {text-align:left;padding:0;margin:0;position:absolute;}div.align-center{  text-align: center;  margin-left: -50px;}</style>
    <li id="wrapper" class="small-line"><div class="align-left">MATH 142</div><div class="align-center">Elementary Algebraic Topology</div></li><style>div.align-left {text-align:left;padding:0;margin:0;position:absolute;}div.align-center{  text-align: center;  margin-left: -50px;}</style>
    <li id="wrapper" class="small-line"><div class="align-left">MATH 116</div><div class="align-center">Cryptography</div></li><style>div.align-left {text-align:left;padding:0;margin:0;position:absolute;}div.align-center{  text-align: center;  margin-left: -50px;}</style>
    <li id="wrapper" class="small-line"><div class="align-left">LINGUIS 5</div><div class="align-center">Language and Linguistics</div></li><style>div.align-left {text-align:left;padding:0;margin:0;position:absolute;}div.align-center{  text-align: center;  margin-left: -50px;}</style>
  </ul>
</div>
<div id='contentSummer_2020' style="display: none;">
  <strong>Summer 2020</strong>
  <br>
  <i>UC Berkeley</i>
  <hr style="width:200px;text-align:left;margin-left:0">
<ul>
<li id="wrapper" class="small-line"><div class="align-left">MATH 115</div><div class="align-center">Introduction to Number Theory</div></li><style>div.align-left {text-align:left;padding:0;margin:0;position:absolute;}div.align-center{  text-align: center;  margin-left: -50px;}</style>
  </ul>
</div>
<div id='contentSpring_2020' style="display: none;">
  <strong>Spring 2020</strong>
  <br>
  <i>UC Berkeley</i>
  <hr style="width:200px;text-align:left;margin-left:0">
<ul>
<li id="wrapper" class="small-line"><div class="align-left">MATH H113</div><div class="align-center">(Honors) Introduction to Abstract Algebra</div></li><style>div.align-left {text-align:left;padding:0;margin:0;position:absolute;}div.align-center{  text-align: center;  margin-left: -50px;}</style>
    <li id="wrapper" class="small-line"><div class="align-left">MATH 110</div><div class="align-center">Linear Algebra</div></li><style>div.align-left {text-align:left;padding:0;margin:0;position:absolute;}div.align-center{  text-align: center;  margin-left: -50px;}</style>
    <li id="wrapper" class="small-line"><div class="align-left">STAT 33B</div><div class="align-center">Introduction to Advanced Programming in R</div></li><style>div.align-left {text-align:left;padding:0;margin:0;position:absolute;}div.align-center{  text-align: center;  margin-left: -50px;}</style>
    <li id="wrapper" class="small-line"><div class="align-left">PHILOS 5</div><div class="align-center">Science and Human Understanding</div></li><style>div.align-left {text-align:left;padding:0;margin:0;position:absolute;}div.align-center{  text-align: center;  margin-left: -50px;}</style>
  </ul>
</div>
<div id='contentFall_2019' style="display: none;">
  <strong>Fall 2019</strong>
  <br>
  <i>UC Berkeley</i>
  <hr style="width:200px;text-align:left;margin-left:0">
<ul>
<li id="wrapper" class="small-line"><div class="align-left">MATH H104</div><div class="align-center">(Honors) Introduction to Analysis</div></li><style>div.align-left {text-align:left;padding:0;margin:0;position:absolute;}div.align-center{  text-align: center;  margin-left: -50px;}</style>
    <li id="wrapper" class="small-line"><div class="align-left">CS 61A</div><div class="align-center">Structure and Interpretation of Computer Programs</div></li><style>div.align-left {text-align:left;padding:0;margin:0;position:absolute;}div.align-center{  text-align: center;  margin-left: -50px;}</style>
    <li id="wrapper" class="small-line"><div class="align-left">MUSA 74</div><div class="align-center">Introduction to Proofs</div></li><style>div.align-left {text-align:left;padding:0;margin:0;position:absolute;}div.align-center{  text-align: center;  margin-left: -50px;}</style>
    <li id="wrapper" class="small-line"><div class="align-left">ASTRON C10</div><div class="align-center">General Astronomy</div></li><style>div.align-left {text-align:left;padding:0;margin:0;position:absolute;}div.align-center{  text-align: center;  margin-left: -50px;}</style>
  </ul>
</div>
<script>
document.getElementById('term').onchange = function() {
  var selectedValue = this.value;

  document.getElementById('contentWinter_2026').style.display = 'none';
  document.getElementById('contentFall_2025').style.display = 'none';
  document.getElementById('contentSummer_2025').style.display = 'none';
  document.getElementById('contentSpring_2025').style.display = 'none';
  document.getElementById('contentWinter_2025').style.display = 'none';
  document.getElementById('contentFall_2024').style.display = 'none';
  document.getElementById('contentSpring_2024').style.display = 'none';
  document.getElementById('contentSpring_2023').style.display = 'none';
  document.getElementById('contentFall_2022').style.display = 'none';
  document.getElementById('contentSpring_2022').style.display = 'none';
  document.getElementById('contentFall_2021').style.display = 'none';
  document.getElementById('contentSummer_2021').style.display = 'none';
  document.getElementById('contentSpring_2021').style.display = 'none';
  document.getElementById('contentFall_2020').style.display = 'none';
  document.getElementById('contentSummer_2020').style.display = 'none';
  document.getElementById('contentSpring_2020').style.display = 'none';
  document.getElementById('contentFall_2019').style.display = 'none';
  document.getElementById('content' + selectedValue).style.display = 'block';
};
</script>

<style>
  div.align-left {
      text-align:left;
      padding:0;
      margin:-0;
      position:absolute;
  }
  div.align-center{
    text-align: left;
    margin-left: 140px;
  }
  div.small-line{
    line-height: 0.5;
  }
</style>


Extracurricular miscellany
------
[mtg, photography, D&D, lockpicking, public transit haikus]

**Markdown generator**

The repository includes [a set of Jupyter notebooks](https://github.com/academicpages/academicpages.github.io/tree/master/markdown_generator
) that converts a CSV containing structured data about talks or presentations into individual markdown files that will be properly formatted for the Academic Pages template. The sample CSVs in that directory are the ones I used to create my own personal website at stuartgeiger.com. My usual workflow is that I keep a spreadsheet of my publications and talks, then run the code in these notebooks to generate the markdown files, then commit and push them to the GitHub repository.

How to edit your site's GitHub repository
------
Many people use a git client to create files on their local computer and then push them to GitHub's servers. If you are not familiar with git, you can directly edit these configuration and markdown files directly in the github.com interface. Navigate to a file (like [this one](https://github.com/academicpages/academicpages.github.io/blob/master/_talks/2012-03-01-talk-1.md) and click the pencil icon in the top right of the content preview (to the right of the "Raw | Blame | History" buttons). You can delete a file by clicking the trashcan icon to the right of the pencil icon. You can also create new files or upload files by navigating to a directory and clicking the "Create new file" or "Upload files" buttons. 

Example: editing a markdown file for a talk
![Editing a markdown file for a talk](/images/editing-talk.png)

For more info
------
More info about configuring Academic Pages can be found in [the guide](https://academicpages.github.io/markdown/), the [growing wiki](https://github.com/academicpages/academicpages.github.io/wiki), and you can always [ask a question on GitHub](https://github.com/academicpages/academicpages.github.io/discussions). The [guides for the Minimal Mistakes theme](https://mmistakes.github.io/minimal-mistakes/docs/configuration/) (which this theme was forked from) might also be helpful.
