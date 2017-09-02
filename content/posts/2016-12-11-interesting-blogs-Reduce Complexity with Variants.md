---
layout: post
title: 'Interesting Blog: "Reduce Complexity with Variants"'
comments: true
keywords: "clojure, adt, data structure, system model"
---

I've just read this great blog:

- [Reduce Complexity with Variants](http://www.lispcast.com/reduce-complexity-with-variants)

## Notes and Highlights

- Alternative representation of data type in Clojure

```clojure
{:image/in-memory [[...]]} ;; ellipsis represents lots of pixel data
{:image/on-disk ["/dogs.jpg"]}
{:image/web ["http://doggy.com/dogs.jpg"]}
```

- When do you use variants?

Whenever you have different data that have the same operations (for instance, all three kinds of images can be displayed to the screen).

- When do you use the vector version of variants?

If you have trees like HTML documents or ASTs after parsing.

- When do you use the single key hashmap version of variants?

If you are planning on collecting values into a vector, or the nesting is not obvious.
