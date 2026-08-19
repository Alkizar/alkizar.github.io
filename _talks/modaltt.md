---
title: "ModalTT: A Type Theory for Modal Virtual Double Theories"
collection: talks
type: "Talk"
permalink: /talks/modaltt
venue: "Topos Institute"
date: 2026-08-18
location: "Berkeley, CA"
---

Presented for the [Topos Institute's Berkeley Seminar](https://topos.institute/events/berkeley-seminar/).

**Abstract:** CatColab's DoubleTT module uses virtual double theories to parameterize logics, which determine a type theory on models. These theories are currently hard-coded in CatColab's backend, and their specification is not exposed directly to the user. This talk introduces an implementation of a user-facing DSL for specifying custom (modal) virtual double theories. This language is backed by a type theory for virtual double categories (VDCs), inspired by prior work by Hayato Nasu on an internal language of VDCs. We propose a handful of modifications to Nasu's type theory, which integrate support for double monads, expose the innate resource-sensitivity and order-sensitivity of the internal logic, and better facilitate a translation into software.

**Slides:** 

<iframe src="https://alkizar.github.io/files/slides/modaltt_slides/modaltt_slides.html" width="100%" height="500px" title="test"></iframe>