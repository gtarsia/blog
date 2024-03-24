---
title: Variables
---

[[Variables]] in JavaScript can be declared in two different ways.

## `const`

Variables declared with `const` are expected to not change:

```js
const age = 15;
age = 16; // This causes the error "Uncaught TypeError: Assignment to constant variable."
```

## `let`

On the other hand, variables declared with `let` can be reassigned after declaration.

```js
let age = 15;
age = 16; // This is ok!
```
