---
comments: true
date: 2016-12-03T00:00:00Z
keywords: social media, favicon, security
title: 'Interesting Blog: "Your Social Media Fingerprint"'
url: /2016/12/03/interesting-blogs-Your Social Media Fingerprint/
---

I've just read this great blog:

- [Your Social Media Fingerprint](https://robinlinus.github.io/socialmedia-leak/)

## Notes and Highlights

We can use this URL in an `<img>` tag in our website:

```html
<img src="https://www.facebook.com/login.php?next=https%3A%2F%2Fwww.facebook.com%2Ffavicon.ico">
```

This `<img>` tag's property:

- Logged in:   receives the favicon image, will load it successfully, and the onLoad callback will be fired.
- Logged out: receives the HTML of the login screen, will fail to load it as an image, and the onError callback will be fired.



