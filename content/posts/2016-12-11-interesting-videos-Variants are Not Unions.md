---
comments: true
date: 2016-12-11T00:00:00Z
keywords: clojure, adt, data structure, system model
title: 'Interesting Video: "Variants are Not Unions"'
url: /2016/12/11/interesting-videos-Variants are Not Unions/
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
