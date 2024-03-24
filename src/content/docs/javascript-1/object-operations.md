---
title: JavaScript object operations
---

We can access the value of any property. You pass a key, and you get the value for that key. This is done by using the `.` dot notation:

```js
console.log(dog.color); // -> "black"
console.log(dog.age); // -> 10
```

We can also set the value of any property by combining the `.` with `=` (equals).

```js
console.log(dog.color); // -> "black"
dog.color = "white";
console.log(dog.color); // -> "white"
dog.breed = "chihuahua";
console.log(dog.breed); // -> "chihuahua"
```

[Property accessors - JavaScript | MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Property_accessors)

Notice how we set a new property, `"breed"`, even though we hadn't defined it initially
_(Keep in mind: TypeScript might warn against adding property in finitely typed objects.)_

## `[]` brackets notation

You can also access or set property values with the `[]` brackets notation

These two are exactly equivalent for accessing:

```js
console.log(dog.color); // -> "black"
console.log(dog["color"]); // -> "black"
```

These two are also exactly equivalent for setting:

```js
dog.color = "white";
dog["color"] = "white";
```

This notation is similar to quotes when declaring, in that you need it when property keys start with numbers or include whitespace or several special characters.

```js
dog["name and age"] = "toby, 15"; // this is good
dog.name and age = "tobyd, 15"; // 😢 THIS IS NOT VALID JS CODE
```
