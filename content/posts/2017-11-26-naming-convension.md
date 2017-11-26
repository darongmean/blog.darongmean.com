---
comments: true
date: 2017-11-26T00:00:00Z
keywords: naming, convention, clojure, java
title: Naming Convention
url: /naming-convention
---

## as… 
for explicit coercion method

> Ex: as.numeric(x)

## …? 
for condition method. use `is…` or `has…` if the programming langauge doesn’t allow ? character.

> Ex: (collection? x)

## maybe… 
for doing something if arguments are not nil

> Ex: (maybe-substitute header)