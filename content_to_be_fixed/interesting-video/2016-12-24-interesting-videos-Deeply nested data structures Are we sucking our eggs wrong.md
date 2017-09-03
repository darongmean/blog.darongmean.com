---
comments: true
date: 2016-12-24T00:00:00Z
keywords: clojure, tree, data structure
title: 'Interesting Video: "Deeply nested data structures: Are we sucking our eggs
  wrong?"'
url: /2016/12/24/interesting-videos-Deeply nested data structures Are we sucking our
  eggs wrong/
---

I've just watched this great video:

- [Deeply nested data structures: Are we sucking our eggs wrong?](https://skillsmatter.com/skillscasts/9158-deeply-nested-data-structures-are-we-sucking-our-eggs-wrong)

Related to library [Hydra](https://github.com/adwelly/hydra).

## Notes and Highlights

Convert nested structure to flat structure. Example: convert the following

```clojure
{:this {:is {:a :tree}}}
```

to

```clojure
{[:this :is :a] :tree}
```
