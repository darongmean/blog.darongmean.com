---
layout: post
title: 'Interesting Video: "The Entity Microservice Trap You May Be Doing It Wrong"'
comments: true
keywords: "behavior-oriented, microservices, event bus"
---

I've just watched this great video:

- [The Entity Microservice Trap You May Be Doing It Wrong](https://www.youtube.com/watch?v=vs_XiP5Lkgg)

Slide is available [here](https://gotocon.com/chicago-2016/presentation/The%20Entity%20Microservice%20Trap%20-%20You%20May%20be%20Doing%20it%20Wrong).

## Notes and Highlights

- `Get the data structures correct, and the code will write itself` -- Fred Brook's Design Approach
- Where do you put the business logic?
- The **Cynefin Framework**: simple(cause -> effect), complicated(cause ->->-> effect), complex(cause ? effect), and chaotic(effect? cause?)
- Breaking up monoliths: 
  1. break DB apart
  2. create behavior-oriented services
- Use event bus
- One service = business logic + solution collecting + event publishing + 300ms responder



