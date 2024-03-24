---
title: Adding JavaScript code to a page
---

There's two ways to add JavaScript to a page.

## 1. Use `src` attribute in `<script>` element

For example:

```html
<!DOCTYPE >
<html>
  <head>
    <script src="/main.js"></script>
  </head>
  <body></body>
</html>
```

This expects the server to be able to serve the file at `/main.js` .

## 2. Hardcode it inside `<script>` element

This is similar to using `<style>` for CSS. You can write the JS code directly inside a `<script>` element.

```html
<!DOCTYPE >
<html>
  <head>
    <script>
      console.log("Hello World!");
    </script>
  </head>
  <body></body>
</html>
```

> [!tip] Keep in mind, this to how the Web works.
> Most of the times in professional practice, we'll code using a more advanced framework.
> But sometimes you need to debug a problem or investigate an issue, a good foundation is necessary.
