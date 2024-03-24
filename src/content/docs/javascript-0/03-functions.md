---
title: Functions
---

JavaScript functions can be declared in two different ways:

## 1. `function` keyword

```js
function squared(n) {
  return n * n;
}
```

Function name is optional if you assign the function to a variable.

```js
let squared = function (n) {
  return n * n;
};
```

## 2. Arrow function expressions

**Arrow Function Expressions** are essentially functions with a couple of differences that I won't explain right now. What you need to know is that the **single expression** version is very short, and that they don't need to have function names.

### Single expression

```js
const squared = (n) => n * n;
```

### Statement

When you want/need to run more than one statement inside

```js
const squared = (n) => {
  return n * n;
};
```
