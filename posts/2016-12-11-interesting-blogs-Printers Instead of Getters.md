---
layout: post
title: 'Interesting Blog: "Printers Instead of Getters"'
comments: true
keywords: "java, visitor pattern"
---

I've just read this great blog:

- [Printers Instead of Getters](http://www.yegor256.com/2016/04/05/printers-instead-of-getters.html)

## Notes and Highlights

Since getters are an anti-pattern, how are we supposed to convert an object to, say, JSON or plain text? I'm suggesting to use printers.

```java
JsonMedia media = new JsonMedia("book");
book.print(media);
JsonObject json = media.json();
```

