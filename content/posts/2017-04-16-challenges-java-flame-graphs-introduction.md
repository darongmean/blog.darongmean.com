---
comments: true
date: 2017-04-16T00:00:00Z
keywords: ""
title: 'Challenges - Java Flame Graphs Introduction: Fire For Everyone!'
url: /2017/04/16/challenges-java-flame-graphs-introduction/
---

I've got interested into flame graph and gone through an excellent post [Java Flame Graphs Introduction: Fire For Everyone!](http://psy-lob-saw.blogspot.com/2017/02/flamegraphs-intro-fire-for-everyone.html)

I tried the following script:
```bash
for i in {1..100}; do
  jstack <pid> >> iloveoldshit.jstk;
  sleep 0.1;
done
cat iloveoldshit.jstk | ./stackcollapse-jstack.pl | ./flamegraph.pl --color=green > jstack-flames.svg
```
and get the following error:
```bash
ERROR: No stack counts found
```

Being a beginner, I don't know what happened. So I decided to go through source code. It turned out that `stackcollapse-jstack.pl` filter out some stacks[[^1]] with names like:
- C. CompilerThread
- Signal Dispatcher
- Service Thread
- Attach Listener
- epollWait
- socketAccept
- Socket.*accept0
- socketRead0

I run jstack against an idle tomcat. The dump was full of stacks that get filtered out by the script and `stackcollapse-jstack.pl` returned an empty output.

I managed to get it working by running jstack against a tomcat that's handling requests.

---
Footnote

[^1]: 1:[https://github.com/brendangregg/FlameGraph/blob/master/stackcollapse-jstack.pl#L128](https://github.com/brendangregg/FlameGraph/blob/master/stackcollapse-jstack.pl#L128)
