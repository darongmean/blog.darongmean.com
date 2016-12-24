---
layout: post
title: 'Interesting Video: "Decisions, Decisions"'
comments: true
keywords: "agile"
---

I've just watched this great video by Dan North:

- [Decisions, Decisions](https://www.youtube.com/watch?v=EauykEv_2iA)

## Notes and Highlights

Development, the trade-offs
- automated or manual build
- automated or manual testing
- test-driven or test-after or test-first or test-whenever! development

Spike and stabilize pattern
- write code as you like
- easy to delete code
- feedback from defects or feedback from user
- go back to write test

Architecture, the trade-offs
- monolith or components or serverless
- objects or functions
- synchronous or asynchronous
- threads or event loop or actors or CSP

> If you can't build a single monolith, what makes you think you can build a hole load of tiny monoliths.

> Once you learn to use one thread properly, you are allowed to use some more.

Short software half-life pattern: how long half the code you are working on will change?
- try to keep it short: be able to delete code. Google changes half the code every month.
- small, separate components, each component does one thing: can fit in my head
- hard shell, soft center
- the message is the API. the event is the API, in DDD.
- identifiable boundaries for experimenting
- evolvable architecture
   - dry or decoupled
   - evolution is anything but DRY!
   - DNA doesn't refactor

Deployment, the trade-offs
- automated or manual deployment
- vertical or horizontal scaling
- managed or in-house
- virtual or physical

> Automate something when it's boring. Boring means you've done it lots of time and also means it keep doing the same every time.

Dancing skeleton pattern: get something, anything!, into production
 - full stack, with an interface
 - theory is only like practice in theory
