---
title: "LogiCoC"
collection: publications
category: software
permalink: /project/epilog_coc
excerpt: 'An implementation of the calculus of constructions as a logic program'
paperurl: 'https://github.com/Alkizar/epilog-coc'
---

For my final project in Prof. Michael Genesereth's logic programming course at Stanford, I implemented a basic proof assistant in the logic programming language <a href='http://epilog.stanford.edu/homepage/index.php'>Epilog</a>. The calculus of constructions backend, which supports universe-polymorphic, inductive dependent types, is fully encoded as an Epilog ruleset. The primary advantage to this encoding is that the system can leverage the native term unification capabilities of Epilog to perform solve for universe metavariables, rather than requiring rolling a solver from scratch. (As a corollary, the system's universe polymorphism is limited by Epilog's solver, so occasionally the typechecker gets stuck.)

Owing to my disdain for the user's experience (yes you, dear reader), the frontend is merely a primitive Javascript interface for the typechecker. The language's grammar can likely be deduced by any initiate of a Lean-like language, but I include a BNF description below for completion:

```bnf
<Declaration>     ::= Axiom | Def | Inductive | Struct
<Axiom>           ::= axiom Name : Term
<Def>             ::= def Name .{UniverseParams}? Param* : Term := Term
<Inductive>       ::= inductive Name .{UniverseParams}? Param* : Term where Constructor+
<Struct>          ::= struct Name .{UniverseParams}? Param* : Term where Field+

<UniverseParams>  ::= Name | Name, UniverseParams
Param           ::= (Name : Term)
Constructor     ::= "|" Param
Field           ::= Param

Term            ::= Term.Name 
                 | match Term with Arm+ 
                 | Term -> Term 
                 | Term Term 
                 | Name 
                 | Sort Universe 
                 | Type Nat 
                 | Type 
                 | Prop 
                 | λ Param . Term
                 | Π Param . Term 
                 | (Term)

Arm             ::= "|" Pattern => Term
Pattern         ::= Name | _ | Name(Patterns)
Patterns        ::= ε | Pattern | Pattern, Patterns
Universe        ::= Nat | Name | max(Universe, Universe) | Universe + Nat | (Universe)
```

(Type `\lam` or `\pi` followed by a space in the editor for the characters λ and Π, respectively.)

<a href='https://epilog-coc.netlify.app/'>LogiCoC Web Application</a>

<a href='https://github.com/Alkizar/epilog-coc'>GitHub Repo</a>

<a href='https://github.com/Alkizar/epilog-coc/tree/master/tests'>Examples</a>