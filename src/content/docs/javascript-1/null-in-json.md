---
title: null in JSON
---

`null` exists in JSON as well.
The `null` in JSON translates to the `null` in JavaScript.

```js
JSON.stringify(null); // -> "null"
JSON.parse("null"); // -> null

JSON.stringify({ prop: null }); // -> '{ "prop": null }'
JSON.parse('{ "prop": null }'); // -> { prop: null }
```

There's no `undefined` in JSON, though:

```js
JSON.stringify(undefined);
// that is the same as doing...
JSON.stringify(); // -> returns undefined by design (explain what by design is)
JSON.parse("undefined"); // -> SyntaxError: "undefined" is not valid JSON

JSON.stringify({ prop: undefined });
// JSON.stringify ignores properties with undefined value, so that is the same as...
JSON.stringify({}); // -> "{}"
JSON.parse('{ "prop": undefined }'); // -> SyntaxError: expected token 'u', ..."{ "prop": undefined "... is not valid JSON
```
