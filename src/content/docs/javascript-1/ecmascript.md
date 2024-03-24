---
title: History of JavaScript and its quirks
---

EcmaScript (ES in short) is the named of the standardization of web scripting languages, JavaScript being the most famous. It was created so as to ensure websites worked the same under different browsers.

It was created by Ecma International in 1997, and, since 2015 it has been receiving yearly updates.

## EcmaScript version names

The versions were initially sequentially numbered, so they started with EcmaScript 1st edition, unoficially ES1. Then EcmaScript 2nd Edition (ES2).

But for the 6th version (2015) onwards, Ecma started to name them with the year as well.
So, in 2015 they released EcmaScript 6th Edition, or ES6, or EcmaScript 2015, or ES2015. Some people still use the number of edition.

It is kind of confusing because ES6 is ES2015, not ES2016. Because of that it's best to use ES2015 instead.

You can read about [ECMAScript version history - Wikipedia](https://en.wikipedia.org/wiki/ECMAScript_version_history).

JavaScript's origins were not very clean. Initially, it was designed for the Netscape browser.

## JavaScript has weird behaviour

For example:

```js
true + true; // -> 2
```

These are my two biggest reasons why:

- JavaScript initial design was designed in just 10 days.
- JavaScript has a lot of backwards compatibility, hence, a lot of bad code still runs just fine.

JavaScript has been improving over time to the point where we have a decent language. But it wasn't always like that.

Because of such weird behaviours, I think tools like TypeScript and ESLint are crucial to write the cleanest JavaScript code.
