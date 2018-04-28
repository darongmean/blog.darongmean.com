---
comments: true
date: 2018-04-28T00:00:00Z
keywords: react-native, clojurescript, shadow-cljs
title: "React-Native & Clojurescript - Create a project with shadow-cljs"
url: /post/react-native-cljs-shadow-cljs
---

> Disclaimer: This serie is my notes while I'm exploring ReactNative and Clojurescript ecosystems. I've never done any mobile development or anything related to XCode. I've done some Clojurescript developments and this is my first time using [shadow-cljs](http://shadow-cljs.org/).


# TLDR; 

### Create the project

I installed `npm`, `yarn`, `react-native-cli`, `XCode`, `shadow-cljs`, and used the following commands to create the project.

```
react-native init FunanMobile
cd FunanMobile
yarn add --dev shadow-cljs
mkdir -p cljs/hello
vim cljs/hello/core.cljs
cat cljs/hello/core.cljs
```

```clojure
(ns hello.core)

(defn foo []
  (js/alert "Hello from CLJS!"))
```

```
mkdir js
vim js/.babelrc
cat js/.babelrc
```

```json
{
    "ignore": ["*.js"]
}
```

```
shadow-cljs init
vim shadow-cljs.edn
cat shadow-cljs.edn
```

```clojure
{:source-paths
 ["cljs"]

 :dependencies
 []

 :builds
 {:app {:target     :npm-module
        :runtime    :react-native
        :entries    [hello.core]
        :output-dir "js"}}}
```

```
vim index.js
cat index.js
```

```js
import { AppRegistry } from 'react-native';
import App from './App';
import './js/shadow.cljs.devtools.client.react_native';
import { foo } from './js/hello.core';

AppRegistry.registerComponent('FunanMobile', () => App);
foo();
```

### Start development

```
yarn shadow-cljs watch app
react-native run-ios
```

# Why shadow-cljs?

I tried [re-natal](https://github.com/drapanjanas/re-natal) and it worked. However, the workflow around importing external components was frustrating. 

If I forgot to `require` the component, I had to re-run the tools to use the component in CLJS. I played around many different external components. Re-run the tools took most of my time while I should spend those time to do the work instead.

Using shadow-cljs improved my workflow a lot:

- import external components? Follow documents of the component, re-run shadow-cljs, done.
- improved support of importing ES6 modules via `require`
- start up faster than `lein`

The support for React Native of shadow-cljs is experimental. `Source map` isn't working and some other stuffs might also not work. However, I need only `hot reload` and `repl` in my project.

# References

- https://facebook.github.io/react-native/docs/getting-started.html
- http://cljsrn.org/
- https://github.com/drapanjanas/re-natal
- https://github.com/gphilipp/react-native-with-clojurescript
- https://github.com/thheller/shadow-cljs/issues/214#issuecomment-381237115
- https://github.com/idokutela/rum-native
- https://github.com/DogLooksGood/shadow-cljs-with-react-native-note

