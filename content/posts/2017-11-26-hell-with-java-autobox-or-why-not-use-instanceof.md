---
comments: true
date: 2017-11-26T00:00:00Z
keywords: java, instanceof, autobox
title: Hell with Java Autobox or Why not use instanceof
url: /post/hell-with-java-autobox-or-why-not-use-instanceof
---

I spent few days debugging problem; the following code not work

```java
long[] organizationIds = new long[organizations.size()];
userParams.put(“usersGroups”, organizationIds);
```

but this worked

```java
Long[] organizationIds = new Long[organizations.size()];
```
why? there’s code check snippet along the line:

```java
if (params.get(“usersGroups”) instanceof Long)
```

Although compiler will allow use `long` instead of `Long` and vice visa via autobox, it doesn't happen with `instanceof` operator.