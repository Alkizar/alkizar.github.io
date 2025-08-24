---
permalink: /
title: "Category Theory, Compilers, and Formal Methods"
author_profile: true
redirect_from: 
  - /about/
  - /about.html
---

I am a master's student in computer science at Stanford University, specializing in software theory. I completed my bachelor's in mathematics at UC Berkeley in 2023. I am broadly interested in compiler systems and programming language theory, with an emphasis on applying tools from logic, homotopical algebra, and category theory. After completing my graduate studies, I hope to pursue a career in compiler engineering or applied formal methods.

[general interest in studying software, with a special emphasis on compiler systems, using tools from logic, homotopical algebra, and category theory; motivations, career goals]

Academic Interests
======
I have been studying categorical methods since my second year as an undergrad, after being introduced to homological algebra, and remain interested in studying anything with a category-theoretic flavor. I have also spent a good amount of time studying algebraic topology and homotopy theory; my [senior undergrad thesis](https://alkizar.github.io/project/graded_monoidal_categories) introduced a formal categorical framework for a reoccurring phenomenon in [smash products](https://ncatlab.org/nlab/show/smash+product+of+spectra) found in stable homotopy theory.

More recently, my studies have been focused on PL and functional programming. I have a general interest in formal methods, SMT, automated proofs, and formal verification. On the more applied side, I am passionate about compiler design (both frontend and backend), and the mathematics underlying parsing, semantic analysis, and code generation algorithms. I am also interested in compiler optimizations (their theory and implementation), and LLVM. In particular, I spend a lot of time thinking about ways to apply my theoretical background to optimization algorithms (see below). I have some background in security as well, and hope to spend more time studying compiler security and safety.

I have a curiosity for neurosymbolic proof systems such as [DeepMind's AlphaGeometry](https://github.com/google-deepmind/alphageometry) and [LeanDojo's ReProver](https://github.com/lean-dojo/ReProver), and (unsuccessfully) attempted to implement my own model for verifying the commutativity of diagrams in category theory. Although the final product did not perform especially well, working on the model from scratch was a valuable learning experience and I walked away feeling much more comfortable working with tools for ML. I am a strong supporter of efforts towards aligning AI and building a strong ethical foundation for machine learning technologies, as they become increasingly integrated into day-to-day life.

Current projects
------
Currently I spend a lot of time thinking about the Morphic compiler, and I'm working on trying to generalize the compiler's Lambda Set Specialization algorithm. I am hoping to extend LSS to the dependently-typed setting, and enable greater precision in the compiler's inference of certain type constraints for better code generation.

In my spare time, I've begun writing a compiler in Rust for a functional programming language of my own design. This is mostly to practice working with Rust, but I also plan to use this as an opportunity to get my hands dirty with using an LLVM backend. I am also porting over to Rust a command-line tool I originally wrote in Python with a friend in 2024, for computing statistics on decklists scraped from online Magic the Gathering tournaments. I used this tool last year to study the metagame leading up to the Pioneer Regional Championship in DC, and hope to do the same this year to prepare for the RC in Las Vegas (ideally with a much cleaner and more efficient codebase this time).

Lastly, I am working on reformulating data flow analysis as a functorial construct, to capture the duality of direction and compositionality (see partial redundancy elimination) of the data flow algorithm. I've had to put this idea on hold for the time being, to focus on my classes and other projects.

Coursework
------

<form id='coursework'>
  <label for='terms'>Academic Term</label>
  <select name="terms" id='terms' onchange="updateIframe()">
    <option value="f19" selected>Fall 2019</option>
    <option value="s20">Spring 2020</option>
  </select>
</form>

<iframe id="dynamicIframe" src="" width="800" height="600"></iframe>

----

<label for='term'>Academic Term</label>
<select id='term'>
  <option value="f19" selected>Fall 2019</option>
  <option value="s20">Spring 2020</option>
</select>

<div id="contentf19" style="display: block;">Content for Option 1</div>
<div id="contents20" style="display: none;">Content for Option 2</div>

<script>
document.getElementById('term').onchange = function() {
  var selectedValue = this.value;

  // Hide all content divs
  document.getElementById('contentf19').style.display = 'none';
  document.getElementById('contents20').style.display = 'none';

  // Show the selected content div
  document.getElementById('content' + selectedValue.slice(-1)).style.display = 'block';
}
</script>


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
