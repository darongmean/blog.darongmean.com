---
comments: true
date: 2016-11-27T00:00:00Z
keywords: continuous delivery, acceptance test, user journey, impersonator pattern
title: 'Interesting Talk: "Creating Maintainable Automated Acceptance Test Suites"'
url: /2016/11/27/interesting-talks-Creating Maintainable Automated Acceptance Test
  Suites/
---

I've just watched this great talk:

- [Creating Maintainable Automated Acceptance Test Suites](https://www.youtube.com/watch?v=X9ap-zH0Gkc)

Slide is availabe [here](http://www.slideshare.net/jezhumble/creating-maintainable-automated-acceptance-tests).

## Notes and Highlights

- Principle 0: writing good acceptance tests is hard
- Principle 1: tests are first-class citizens of your project
  - treat code as production code
  - refactor 
  - don't repeat yourself
  - don't use record playback tools to build your suite
  - separate intention from mechanics
  - express the test as steps of a user's journey[[^1]]
- Principle 2: always interact with the system under test the same way as a user would
  - understand when behavior is asynchronous and account for it explicitly
  - don't use bare sleep: poll
  - if it's hard to write the test, you need to have a conversation with the team
- Principle 3: continuously curate the structure of your test suites
  - identify user journeys[[^1]]
  - most applications have **very few distinct perosonas**
  - most stories in iterative developments are **enhancements** to existing journeys
  - extract journeys[[^1]] from your acceptance tests
  - make the journey tests fast and ran them first
  - do **test the most likely path** that the team, business and UX folk agree upon
  - do **not test every possible path** through the system
  - extract negative tests and edge cases into a **regression suite** which runs after your journey tests
- Principle 4: everyone owns acceptance tests
  - not all tests should call the external system
  - paramterize connections to external systems
  - run integration smoke tests before full acceptance suite
  - **impersonator pattern**
     - create a proxy from SUT to external system
     - cache results from integration smoke tests
     - periodically expire cache
- Principle 5: acceptance tests are responsible for managing their own test data
  - test-specific data
  - test reference data
  - application reference data
  - ensure tests are independent
  - don't use production data dumps(except for performance testing and staging)

---
Footnote:

[^1]: 1: journey: the path a persona takes through the application to achieve an end goal





