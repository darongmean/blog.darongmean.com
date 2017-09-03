---
comments: true
date: 2016-12-11T00:00:00Z
keywords: software design, exception, system robustness
title: 'Interesting Paper: "Fail Fast"'
url: /2016/12/11/interesting-papers-fail fast/
---

I've just read this great paper by Jim Shore:

- [Fail Fast](http://martinfowler.com/ieeeSoftware/failFast.pdf)

## Notes and Highlights

Failing fast is a nonintuitive technique: “failing immediately and visibly” sounds like it would make your software more fragile, but it actually makes it more robust. Bugs are easier to find and fix, so fewer go into production.

- For example, consider a method that reads a property from a configuration file. What should happen when the property isn’t present? A common approach is to return null or a default value.

- In contrast, a program that fails fast will throw an exception.

**Assertions** are the key to failing fast. An assertion is a tiny piece of code that checks a condition
and then fails if the condition isn’t met. So, when something starts to go wrong, an assertion detects the problem and makes it visible.

...it’s tough to know when to add assertions. One way to tell is to look for comments. Comments often document assumptions about how a piece of code works or how it should be called. When you see those comments, or feel like writing one, **think about how you can turn it into an assertion instead**. When you’re writing a method, avoid writing assertions for problems in the method itself. 

Think about what kinds of defects are possible and how they occur. Place your assertions so that the software fails earlier—close to the original problem—making the problem easy to find. What kinds of problems are common in your code and how can you use assertions to make them easy to fix?

When writing an assertion, think about what kind of information you’ll need to fix the problem if the assertion fails. Include that information in the assertion message. Don’t just repeat the assertion’s condition; the stack trace will lead to that. Instead, put the error in context.

- You don’t need to go overboard when writing assertion messages. Assertions are for programmers, so they don’t need to be user friendly, just informative.

If you use a **global exception handler**, avoid catch-all exception handlers in the rest of your application. They’ll prevent exceptions from reaching your global handler. Also, when you use resources that have to be closed (such as files), be sure to use finally blocks or using statements (in C#) to clean them up. This way, if an exception occurs, the application will be returned to a fresh, working state.
