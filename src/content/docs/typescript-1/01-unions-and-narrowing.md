---
title: Unions and narrowing
---

```ts
let age: number | string = 15;
// ✅
```

Our `age` variable has a **Union Type** composed of the types `number` and `string`.

Types are joined each other with a `|` (pipe) character.

In that declaration, we set the value to `15`. That is valid because `15` is of type `number`, and `number` is part of `number | string`.

```ts
let age: number | string = 15;
// ✅
age = "15";
// ✅
age = true;
// ❌ Type 'boolean' is not assignable to type 'string | number'.
```
