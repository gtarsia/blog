---
title: Functions
---

Functions have types in the **arguments** and in the **return**.

```ts
function length(str: string): number {
  // some code here
}
```

In this code we made the function `length` have:

1. A `str` argument with type `string`.
2. A return type of type `number`.

Let's define the body of this function:

```ts
function length(str: string): number {
  return "what";
}
// ❌ Type 'string' is not assignable to type 'number'.

function length(str: string): number {
  return str.length;
}
// ✅
```

In the first one I tried to return a `string`, `'what'`, but the function should return a `number`.

Let's call this function:

```js
hello(123);
// ❌ Argument of type 'number' is not assignable to parameter of type 'string'.

hello("123");
// ✅
```
