---
comments: true
date: 2017-11-26T00:00:00Z
keywords: html, anchor, target
title: HTML Anchor <a> - target attribute
url: /post/html-anchor-target-attribute
---

http://stackoverflow.com/a/8867079

Using `target=”_blank”` will instruct the browser to create a new browser tab or window when the user clicks on the link.

Using `target=”_new”` is technically invalid according to the specifications, but as far as I know every browser will behave the same way:
- it will search for a tab or window with the context name “_new”
- if a “_new” tab/window is found, then the URL is loaded into it
- if it’s not found, a new tab/window is created with the context name “_new”, and the URL loaded into it

Note `target=”_new”` will behave exactly the same as `target=”new”`, and the latter is valid HTML while the former is invalid HTML.

Adding some confusion to this, in HTML4 the target attribute was deprecated. In HTML5 this decision was reversed, and it is an official part of the spec once again. All browsers support target no matter what version of HTML you are using, but some validators will flag the use as deprecated if your doctype is HTML4.

---

http://www.w3.org/TR/html4/types.html#type-frame-target

The following target names are reserved and have special meanings.

- `_blank` The user agent should load the designated document in a new, unnamed window.
- `_self` The user agent should load the document in the same frame as the element that refers to this target.
- `_parent` The user agent should load the document into the immediate FRAMESET parent of the current frame. This value is equivalent to _self if the current frame has no parent.
- `_top` The user agent should load the document into the full, original window (thus canceling all other frames). This value is equivalent to _self if the current frame has no parent.