---
title: HTML Attributes
---

:SiHtml5: elements can have attributes.

HTML attributes, are well, attributes, modifications that you can set on declared elements.
Attributes have a **name** and a **value**.

Given this :SiHtml5: code:

```html
<div>Hello world!</div>
```

Let's set two of the most used attributes on our `div` element, `id` and `class`:

- `id` will have a value of `main`
- `class` will have a value of `container drawer`

```html
<div id="main" class="container drawer">Hello world!</div>
```

_Let's not care for a moment what the `id` and `class` attributes actually do._

From this you can see that attributes are declared in the open tag (and in self-closing tags as well), but never in the closing tag.

_Notice how there's spaces between the different attributes and the element name._
