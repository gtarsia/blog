---
title: Using JSON in JavaScript
---

JavaScript has a global namespace object `JSON` that has two methods:

- `JSON.parse`
- `JSON.stringify`

`JSON.parse` takes a string which should be valid JSON, and returns an object in JavaScript.

```javascript
JSON.parse(`{ "name": "Steve" }`);
// -> { name: 'Steve' }
```

`JSON.stringify` does the opposite, it takes an object and returns a valid JSON string:

```javascript
JSON.stringify({ name: "Steve" });
// -> '{"name":"Steve"}'
```
