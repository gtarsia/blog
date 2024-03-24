---
title: Injecting CSS on a page
---

Let's say you have an HTML page. And you wrote some CSS for the page. _Where_ exactly do you add the CSS? Or _how_?

There's 3 different ways to add CSS to a page:

## 1. Using a `<link>` element

Like this: `<link rel="stylesheet" href="/css/file.css" />`.
The value `href` should be a valid path to a CSS file in the server.
Generally it is placed anywhere inside the `<head>` element.
This expects the server to respond with valid CSS when `/css/file.css` is requested.

## 2. Using `<style>` element

For example:

```html
<style>
  html {
    color: red;
  }
</style>
```

Instead of having the CSS in a different location, the CSS is written directly inside the `<style>` element.

Generally, it's best to use a `<link>` instead of `<style>`. The reason for is that it separates HTML and CSS in different files.

## 3. Using the `style` attribute

Whereas the two previous ways you would add CSS that would affect the entire page, setting the `style` attribute on an element will only alter that element specifically.

```html
<div
  style="
  background-color: red;
  margin-top: 3px;
"
>
  My styled div
</div>
```

Only the property-value pairs can be defined as value, no selectors are defined since the point is to alter the element that has this attribute.

This will add a red background color and top margin of `3px` to that `div` specifically.
