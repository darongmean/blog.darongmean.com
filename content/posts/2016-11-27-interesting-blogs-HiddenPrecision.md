---
layout: post
title: 'Interesting Blog: "HiddenPrecision"'
comments: true
keywords: "date value, floating value"
---

I've just read this great blog:

- [HiddenPrecision](http://martinfowler.com/bliki/HiddenPrecision.html)

## Notes and Highlights

- Hidden precision is a common problem with dates, because it's sadly common to have a date creation function that actually provides an instant like this. It's an example of poor naming, and indeed general poor modeling of dates and times.
- If you have a fractional currency part like cents, then usually it's best to use integers on the fractional value, representing €5.00 with 500, preferably within a money type.

