---
comments: true
date: 2018-04-29T00:00:00Z
keywords: react-native, XCode
title: "React-Native & Clojurescript - Work with XCode"
url: /post/react-native-cljs-xcode
---

> Disclaimer: This serie is my notes while I'm exploring ReactNative and Clojurescript ecosystems. I've never done any mobile development or anything related to XCode. I've done some Clojurescript developments and this is my first time using [shadow-cljs](http://shadow-cljs.org/).

There's no suprise that I would encounter issues with XCode. Here are the issues I managed to solve so far.

# Error running React Native app from terminal (iOS)

Entered the command `react-native ios`, and I would get the following error

> xcrun: error: unable to find utility "instruments", not a developer tool or in PATH
>
> Command failed: xcrun instruments -s
> xcrun: error: unable to find utility "instruments", not a developer tool or in PATH

The solution could be found at https://stackoverflow.com/a/41022224.

# Iphone keeps rapidly connecting and disconnecting when I plug it into my Macbook

Iphone kept beeping similar to this https://www.youtube.com/watch?v=q2v1Gh9EVMg.

For some reason, my phone needed to be 100% charge to connect to the Macbook successfully.

# Build failed when run on real device

I tried running the demo app on real device via XCode and I got the following error.

> Code Signing Error: Signing for "FunanMobile" requires a development team. Select a development team in the project editor.
>
> Code Signing Error: Code signing is required for product type 'Application' in SDK 'iOS 11.2’
>
> Code Signing Error: Signing for "FunanMobileTests" requires a development team. Select a development team in the project editor.
>
> Code Signing Error: Code signing is required for product type 'Unit Test Bundle' in SDK 'iOS 11.2'

Followed the instruction on https://stackoverflow.com/a/39524311, I had to register a developer account and chose the account in XCode for both normal and test build.

# Build failed after update XCode

Apple released a new version of XCode. I upgraded it and the build failed by complaining about `SDWebImage` module. `SWWebImage` should be the component imported by `react-native-fast-image`. I found some discussion at https://github.com/DylanVann/react-native-fast-image/issues/66.

"Project > Clean" was the menu I needed. Just like other software, I just clean the (XCode)project when in doubt.
 
# Deploy and run React Native app on real device via WIFI 

Latest version of XCode and MacOS support "network debugging". I followed the instruction in https://stackoverflow.com/questions/44382841/how-do-you-perform-wireless-debugging-in-xcode-9-with-ios-11-apple-tv-4k-etc and was able to deploy and run the app. I didn't have to connect the phone via USB.

