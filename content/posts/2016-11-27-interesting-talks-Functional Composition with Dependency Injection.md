---
layout: post
title: 'Interesting Talk: "Functional Composition with Dependency Injection"'
comments: true
keywords: "clojure, layer software design, dependency injection"
---

I've just read this great talk:

- Slide is available at [Functional Composition with Dependency Injection (IN/Clojure 2016)](https://speakerdeck.com/kumarshantanu/clojure-2016)

## Notes and Highlights

- Should a layer know about the underlying layer's implementation detail(cache, connection pool)?
- What exactly is the "contract" between the caller and the underlying layer? Is the contract explicit?
- How do you test the service layer for failures? Can failures be simulated? Can tests be run in parallel?
- How easy is it to instrument or wrap an underlying layer implementation?(resilience, asynchrony etc...)

