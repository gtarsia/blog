---
title: JavaScript object literals
---

Many classes inherit from Object in JavaScript. But in this page, we're going to explore object literals, the most basic Object in JavaScript.

In JavaScript, we can initialize object like this:

```js
const dog = {
  color: "black",
  age: 10,
};
```

Object literals can have as many properties as desired. We say an object _has_ **properties**, which arr key-value pairs.
In our case, it has two properties:

- One with key `"color"` and value `"black"`.
- Another one with key `"age"` and value `10`.

Property keys can also be declared with quotes. This is equivalent to the previous code:

```js
const dog = {
  color: "black",
  age: 10,
};
```

This form is valid JSON, but do not be confused, while they are conceptually equivalent, JSON objects and JavaScript object literals are different things.

This form is less used, as most of the times

But, there's a couple of situations where a key needs quotes to be valid JavaScript code:

- The key starts with a digit.
- The key includes special characters like `!` or `@` .
- The key includes whitespace.
