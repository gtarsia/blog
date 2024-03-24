---
title: Comparing null and undefined
---

This is the only situation where it is valid to use `==` instead of `===`.

For example: assume we have a variable `dog`, and assume it can have one of these values:

- `null`
- `undefined`
- An object with the property named `age` with a number value

And we want to `console.log` that `age` property. Well you could do this:

```js
if (dog !== undefined && dog !== null) {
  console.log(dog.age);
}
```

That is fine, but you can do this instead:

```js
if (dog != null) {
  console.log(dog.age);
}
```

That is true because when using `==`, `null` and `undefined` are equal when compared with each other and themselves, but nothing else:

```js
null == undefined // -> true
null == null // -> true
undefined == undefined // -> true
null == <anything else here> // -> false
undefined == <anything else here> // -> false
```
