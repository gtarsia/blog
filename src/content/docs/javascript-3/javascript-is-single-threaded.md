---
title: JavaScript is single threaded
---

It is a common confusion that JavaScript threaded nature.

But, that is not exactly true. Make sure to accept that JavaScript is single-threaded. This means that at no point in JavaScript can execute different parts of code at the exact same time. JavaScript alternates jumps between running different execution contexts.

For example, consider the following code:

```js
setInterval(() => console.log("interval"), 1000);
```

This code works fine, it logs the string `'interval'` every 1000 miliseconds (1 second).

But now, consider the following code:

```js
setInterval(() => console.log("interval"), 1000);
while (true) {}
```

The `'interval'` is never logged, because the JavaScript engine is stuck on running the `while` loop. This proves that JavaScript is single-threaded.
