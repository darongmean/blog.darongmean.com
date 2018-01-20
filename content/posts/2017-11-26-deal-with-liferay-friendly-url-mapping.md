---
comments: true
date: 2017-11-26T00:00:00Z
keywords: liferay 6.2, friendly url
title: Deal with Liferay Friendly URL Mapping
url: /post/deal-with-liferay-friendly-url-mapping
---

Liferay has default url start with `/web`, `/group` and `/user` to identify if the page is public, private, or user’s private. The mappings can be changed by modify file `portal-ext.properties` and `ROOT/WEB-INF/web.xml`.

**portal-ext.properties**
![portal-ext.properties](/images/2017-11-26-deal-with-liferay-friendly-url-mapping-1.png)

> Note: `company.default.home.url` is set so that Liferay won’t try to open url `/web/guest` on startup.

**ROOT/WEB-INF/web.xml**
![ROOT/WEB-INF/web.xml](/images/2017-11-26-deal-with-liferay-friendly-url-mapping-2.png)


I’ve got weird error after edit web.xml and Liferay startup with errors. Try to delete `temp` and `work` folder of tomcat help resolve this issue.

Above changes were tested on Liferay 6.2.