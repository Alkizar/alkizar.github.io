---
title: "LogiCoC"
collection: publications
category: software
permalink: /project/epilog_coc
excerpt: 'An implementation of the calculus of constructions as a logic program'
paperurl: 'https://github.com/Alkizar/epilog-coc'
---

A basic proof assistant based on the calculus of constructions, supporting universe polymorphism and (dependent) inductive types, built entirely in the logic programming language <a href='http://epilog.stanford.edu/homepage/index.php'>Epilog</a>. The primary advantage to this implementation is that the backend leverages the native term unification capabilities of Epilog to solve for universe metavariables. The frontend is just a primitive web interface for the typechecker. 

The language's syntax does not contain any surprises, but a BNF of the grammar is included below as a bargain-bin substitute for a genuine tutorial:

```
<Declaration>     ::= <Axiom> | <Def> | <Inductive> | <Struct>
<Axiom>           ::= axiom <Name> : <Term>
<Def>             ::= def <Name> .{<UniverseParams>}? <Param>* : <Term> := <Term>
<Inductive>       ::= inductive <Name> .{<UniverseParams>}? <Param>* : <Term> where <Constructor>+
<Struct>          ::= struct <Name> .{<UniverseParams>}? <Param>* : <Term> where <Param>+

<UniverseParams>  ::= <Name> | <Name>, <UniverseParams>
<Param>           ::= (<Name> : <Term>)
<Constructor>     ::= "|" <Param>

<Term>            ::= <Term>.<Name> 
                    | match <Term> with <Arm>+ 
                    | <Term> -> <Term> 
                    | <Term> <Term> 
                    | <Name> 
                    | Sort <Universe>
                    | Type <Nat> 
                    | Type 
                    | Prop
                    | λ <Param> . <Term>
                    | Π <Param> . <Term>
                    | (<Term>)

<Arm>             ::= "|" <Pattern> => <Term>
<Pattern>         ::= <Name> | _ | <Name>(<Patterns>)
<Patterns>        ::= ε | <Pattern> | <Pattern>, <Patterns>
<Universe>        ::= <Nat> | <Name> | max(<Universe>, <Universe>) | <Universe> + <Nat> | (<Universe>)
```

(Type `\lam` or `\pi` followed by a space in the editor for the characters λ and Π, respectively.)

<a href='https://epilog-coc.netlify.app/'>LogiCoC Web Application</a>

<a href='https://github.com/Alkizar/epilog-coc'>GitHub Repo</a>

<a href='https://github.com/Alkizar/epilog-coc/tree/master/tests'>Examples</a>