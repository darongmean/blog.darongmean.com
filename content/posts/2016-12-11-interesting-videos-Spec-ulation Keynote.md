---
comments: true
date: 2016-12-11T00:00:00Z
keywords: software version
title: 'Interesting Video: "Spec-ulation"'
url: /2016/12/11/interesting-videos-Spec-ulation Keynote/
---

I've just watched this great video by Rich Hickey:

- [Spec-ulation](https://www.youtube.com/watch?v=oyLBGkS5ICk)

## Notes and Highlights

- Changes in software:
  - What is **required**?
    - fn - args
    - ns - var names 
    - artifact - ns/package names/paths
  - What is **provided**?
    - fn - ret (proc/service effect)
    - ns - vars/fns
    - artifact - namespaces/packages
- Change is one of two things: Growth or Breakage
- Grow your software
  - accretion: provide more
  - relaxation: require less
  - fixation: bash bugs
- Break your software
  - require more
  - provide less
  - unrelated stuff under same name
- Breaking changes are broken.
  - Don't do it
  - Don't try to figure out the best way to do it
  - Avoid breakage by turning it into **accretion**: old and new can co-exist
- Recognizing collections:
  - you only `change` a collection by adding/removing members
  - adding = growth, removing = breakage
  - namespaces: collections of vars/fns
  - artifacts: collections of namespaces/packages
- Might just as well change the name
  - requiring more args? providing less on return? **create a new function**
  - providing fewer fns? vars? **create a new namepsace/package**
  - providing fewer namespaces/packages? **create new artifactId**
  - namespace is part of the name, ns aliases can ease transitions
- SemVer is broken, what instead?
  - chronological versioning?(YYYYMMDD.HHMMSS)
  - anything that conveys more and supports some forms of relativism
  - Git SHAs?
- What about iterative development?
  - Alphas are ok: if people are using your alphas, they want to be part of your standup
  - incremental API publishing?
- What about web services?
  - same problems
  - web service is collection of operations
  - operations require/provide
  - **accretion** could prevent a lot of client/service version hell
- Coding for growth
  - Open specs and data formats are key
  - `Specs` are about what you can do, not about what you can't
  - **Always presume you might be handed more than what you need or know about: ignore or have policy for it**

> Why don't you let me say "disallowing any other keys in maps"?
>
> ...most logic systems don't have...something that say "and nothing else will ever be true"...
>
> ...the reason why they don't have it is you can do no good logic with that system, you never ever know or calculate anything you didn't know on the very first day...
>
> ...so you can't let you know your checking problem dominate your `Specs`, that's not what `Specs` is for... you could make something with `Specs` that could do that extra thing, don't put that in your `Specs`, that's not your public thing. You want to add another layer of `Specs` that they like shut down stuff or run an additional check to help people detect erros or something like that, that's fine. But don't put it in your primary public `Specs`...
>
> ...your primary public `Specs` should be oriented toward growth...
 

