---
title: Backlog
---

# TypeScript code is discarded

TypeScript code NEVER runs, as is. When transpiled into JavaScript, all the TypeScript code gets discarded.

The gist is that the resulting JavaScript code.

# Can you transpile bad TypeScript code?

As long as the TypeScript code has no syntax errors, you can ALWAYS transpile TypeScript.

It depends on what is "bad".

Consider the following code:

```
const age = i231h23asdcc _ _
```

Can that code be transpiled to TypeScript? No, because that's not valid TypeScript syntax.

Now, let's analyze this code, which has valid TypeScript syntax.

```ts
const age: number = "15";
```

The type checker complains that

```
Type 'string' is not assignable to type 'number'.
```

But that doesn't mean that the code can't be transpiled to JavaScript. In fact, you totally can. Remember, transpiling TypeScript to JavaScript is (for the most part) just removing the TypeScript specific parts. In our example that would be just removing the `: number`, which results in:

```js
const age = "15";
```

# TypeScript standard

There is no formal document defining what TypeScript. Instead, this is defined via development process.

The TypeScript test suite is vital for maintaing the integrity and reliability of the TypeScript language.
