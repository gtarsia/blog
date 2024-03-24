---
title: typeof operator
---

The `typeof` operator returns a string indicating the type of a value.

```js
typeof 5; // -> 'number'
typeof "hey"; // -> 'string'
typeof undefined; // -> 'undefined'
typeof {}; // -> 'object'
```

Here's a list of the possible results of [typeof - JavaScript | MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/typeof#description)

There are some unexpected situations when using `typeof`:

```js
typeof null; // -> 'object'
typeof []; // -> 'object'
typeof NaN; // -> 'number'
```
