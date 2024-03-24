---
title: JSON rules
---

Here's two rules that are important to understand JSON documents.

## Only double quotes, single quotes are illegal

In JavaScript, you can use single quotes or double quotes for property keys or strings:

❌ Invalid JSON, single quotes are used for property key and string.

```json
{ "name": "Mike" }
```

✅ Valid JSON, double quotes are used for property key and string.

```json
{ "name": "Mike" }
```

## Trailing commas are illegal

❌ Invalid JSON, there's a trailing comma (a comma after the last property)

```json
{
  "name": "Mike",
  "age": 15
}
```

✅ Valid JSON, there's no trailing commas

```json
{
  "name": "Mike",
  "age": 15
}
```
