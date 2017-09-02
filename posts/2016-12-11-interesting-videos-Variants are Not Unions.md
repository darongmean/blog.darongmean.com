---
layout: post
title: 'Interesting Video: "Variants are Not Unions"'
comments: true
keywords: "clojure, adt, data structure, system model"
---

I've just watched this great video by Jeanine Adkisson:

- [Variants are Not Unions](https://www.youtube.com/watch?v=ZQkIWWTygio)

## Notes and Highlights

- lightweight data type in Clojure

- loop variant
```clojure
[:stop ret-val]
[:recur recur-val]
```

- result variant
```clojure
[:ok val]
[:err message]
```
