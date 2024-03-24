---
title: null vs undefined
---

JavaScript has two "empty" values: `null` and `undefined`.

Both of them mean that there is no value but with slight differences.

```js
let name;
```

Because we didn't set a value for the `name` variable, it has a value of `undefined` by default.

```js
let name = undefined;
```

Not initializing the value is the same as initializing the value to undefined:

`null`, on the other hand, is an intentionally "empty" value.

```js
let name = null;
```

So the difference between them is the intention. `undefined` is "by default" (although it can be intentionally set) and `null` is intentional.

## Comparing `null` and `undefined`
