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

Theorae ⊆ CatColab
------

I am currently working on <a href='https://topos.institute/work/catcolab/'>CatColab</a>'s DoubleTT project at the <a href='https://topos.institute/'>Topos Institute</a> in Berkeley, CA. This summer I am implementing Theorae (WIP title), a DSL for specifying modal double theories, in as much generality as the system will allow without becoming cumbersome for the user. Theorae will enable DoubleTT models to be instantiated over custom categorical logics outside of the handful which are currently hard-coded into the backend, with compile-time validation via a type system for virtual double categories. 

Double Category Theory in Lean
------

A project I began towards the end of my program at Stanford, and which I have continued working on in my spare time. My (optimistic) goal is to implement a library in Lean4 that encompasses all of the essential tools of (virtual) double category theory routinely used by applied category theorists. The ergonomics of this library are particularly important, and currently one of the main challenges to this project --- there is a great deal of friction between the multi-dimensionality of double categories and the desire to stay as far from dependent type hell as possible. At the moment I am working on navigating this tension in the core structures of the library, and hope to arrive at a compromise between a faithful encoding of the mathematical definitions and a Not Terrible To Use™ interface.

Type Set Specialization
------

Type set specialization is an extension of the Lambda Set Specialization (LSS) algorithm for terms of arbitrary types which I spent some time collaborating with <a href='https://benjamindriscoll.com/'>Ben Driscoll</a> on during my time at Stanford. The idea behind this generalization is a kind of extra-juiced constant propagation at the type level, to expose type-theoretic optimizations to the compiler using the same mechanism as LSS.

<!--
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
-->