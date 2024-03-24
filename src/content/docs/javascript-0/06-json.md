---
title: JSON
---

JSON (**JavaScript Object Notation**) is a format to express data. It allows for convert data structures into strings, and back. There's also the `.json` extension to store JSON files.

JSON supports:

- Objects
- Arrays
- Strings
- Numbers
- Booleans
- `null`

Here's an example JSON document:

```json
{
  "name": "Mike",
  "age": 15
}
```

## Whitespace is ignored

This JSON document below is completely equivalent to the one above:

```json
{ "name": "Mike", "age": 15 }
```

The first form is easier to read, but the second form has no whitespaces, which saves resources when being stored or transferred.
It depends on the scenario which one is better.

## When do we use JSON

JSON has many uses:

- Configuration files
- Web API services
- Data Reports

For example, NodeJS projects configuration are stored in the `package.json` at the root of the project.
