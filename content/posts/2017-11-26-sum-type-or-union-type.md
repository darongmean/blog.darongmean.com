---
comments: true
date: 2017-11-26T00:00:00Z
keywords: sum type, union type
title: Sum Type/Union Type
url: /post/sum-type-or-union-type
---

## In Java
Use abstract class. 

See http://stackoverflow.com/questions/9975836/howto-simulate-haskells-either-a-b-in-java

## In Clojure

Use vector. `[:left …]` and `[:right ..]` to model either type. 

I can pattern match on first element in the vector.

## In Haskell
Use algebraic data types.