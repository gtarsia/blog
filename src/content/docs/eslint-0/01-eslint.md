---
title: ESLint
---

ESLint Course is a JS/TS [[linter]].

ESLint not only does what linters commonly do, which is enforcing consistent code style, it also detects problematic code.

We won't care about the style rules. We'll only focus on its problematic code detection.

While ESLint pre-dates to TS, I consider TS + ESLint the premier solution for high quality JavaScript code.

While TS is great for dealing with a lot of the problems that come with writing JavaScript code, it is not perfect.

For example, consider the following smelly TS code:

```ts
const str: string = "qwe" + 123;
// ✅ OK for TypeScript
```

This code is "adding" `123` to `'qwe'`. Because of how JS was designed, the `123` is coerced into into `'123'`, so the result is `'qwe123'`.

But in my opinion that shouldn't be valid. I shouldn't be "adding" a `string` and a `number`, instead it should be more explicit, like this:

```ts
const str: string = "15" + `${15}`;
// or
const n = 15;
const str: string = "15" + n.toString();
```

This is where ESLint comes in. When configured correctly, ESLint and its plugins are capable of finding edge cases like that and save developers a ton of headaches.

```ts
const str: string = "qwe" + 123;
// ✅ Cannot add 123 to ''
```
