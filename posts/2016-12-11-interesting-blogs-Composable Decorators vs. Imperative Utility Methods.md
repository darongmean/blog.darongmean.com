---
layout: post
title: 'Interesting Blog: "Composable Decorators vs. Imperative Utility Methods"'
comments: true
keywords: "java, decorator pattern"
---

I've just read this great blog:

- [Composable Decorators vs. Imperative Utility Methods](http://www.yegor256.com/2015/02/26/composable-decorators.html)

## Notes and Highlights

- The biggest advantage we get from decorators is that they make our code **composable**.
- Try to avoid utility methods as much as possible, and use decorators instead. An ideal interface should contain only methods that you absolutely cannot remove. Everything else should be done through composable decorators.


