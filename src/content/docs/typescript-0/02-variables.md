---
title: Variables
---

TypeScript has types before running.

Variable have types. Consider the following code:

```ts
const age: number = 15;
```

We declared the variable `age` with type `number`, then assigned the value `15` to it.

But, let's replace the `15` with a `'15'` (a string) to it and let's see what the type checker finds.

```ts
const age: number = "15";
```

When checked by `tsc` we get this error:

```
Type 'string' is not assignable to type 'number'.
```

## Basic three TypeScript primitives

There's three basic TypeScript [[primitives]].

- `string`
- `number`
- `boolean`

> [!tip] What about `String`, `Number` and `Boolean`
> These are exactly the same as `string`, `number` and `boolean`, just different names for the same things.
