---
title: Custom types
---

## `type` keyword

You can define custom types with `type`.

You can define custom types in TypeScript in 2 different ways:

- With `type` keyword.
- With `interface` keyword.

`interface` is strictly for defining custom object types, while `type` lets you define any possible type (including object types).

For example:

```ts
type Animal = {
  color: string;
  age: number;
};
```

is equivalent to:

```ts
interface Animal {
  color: string;
  age: number;
}
```
