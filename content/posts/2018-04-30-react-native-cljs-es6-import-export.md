---
comments: true
date: 2018-04-30T00:00:00Z
keywords: react-native, clojurescript, shadow-cljs
title: "React-Native & Clojurescript - ES6 Import/Export"
url: /post/react-native-cljs-es6-import-export
---

> Disclaimer: This serie is my notes while I'm exploring ReactNative and Clojurescript ecosystems. I've never done any mobile development or anything related to XCode. I've done some Clojurescript developments and this is my first time using [shadow-cljs](http://shadow-cljs.org/).

Table: ES6 Import to CLJS Require[^1]

|ES6 Import| CLJS Require
|---       | ---         
|import defaultExport from "module-name";|(:require ["module-name" :default defaultExport])
|import * as name from "module-name";|(:require ["module-name" :as name])
|import { export } from "module-name";|(:require ["module-name" :refer (export)])
|import { export as alias } from "module-name";|(:require ["module-name" :rename {export alias}])
|import { export1 , export2 } from "module-name";|(:require ["module-name" :refer (export1 export2)])
|import { export1 , export2 as alias2 , […​] } from "module-name";|(:require ["module-name" :refer (export1) :rename {export2 alias2}])
|import defaultExport, { export [ , […​] ] } from "module-name";|(:require ["module-name" :refer (export) :default defaultExport])
|import defaultExport, * as name from "module-name";|(:require ["module-name" :as name :default defaultExport])
|import "module-name";|(:require ["module-name"])

The `:default` option is currently only available in shadow-cljs, you can [vote here](https://dev.clojure.org/jira/browse/CLJS-2376) to hopefully make it standard. 
You can always use `:as` alias and then call `alias/default` if you prefer to stay compatible with standard CLJS in the meantime.


[^1]: https://shadow-cljs.github.io/docs/UsersGuide.html#_using_npm_packages 

