---
title: Functions don't check arguments
---

In JS, functions have no checks for arguments.

Assume this function:

```js
function fn(a, b) {}
fn(); // -> This runs without errors
```

In many programming languages, this would not be ok. But JavaScript is lax when it comes to missing arguments. In our scenario, `a` and `b` would each have a value of `undefined`.

JavaScript is also lax when it comes to excessive arguments. For example, the following code also runs without throwing:

```js
function fn() {}
fn(1, 2);
```

This is also not technically correct, but the code will still run fine, the arguments `1` and `2` will just be ignored.
