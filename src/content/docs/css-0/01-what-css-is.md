---
title: What CSS is
---

CSS stands for **C**ascading **S**tyle **S**heets (we don't care what that means).
It is used to visually alter an HTML document being rendered in a browser. That is, making specific parts of an HTML page look differently, such as:

- Making things bigger or smaller.
- Changing colors.
- Changing the spacing between elements.

## CSS sample

I wrote this simple CSS code.

```css
div {
  font-size: 15px;
}

div,
span {
  margin: 0px;
  text-align: center;
}
```

Up above we have two different rules.

1. The first rule means that all the `div` elements will have their `font-size` property set to `15px`.
2. The second rule means that all the `div` elements and all the `span` elements will have their:
   1. `margin` property set to `0px` and their...
   2. `text-align` property set to `center`.

CSS is made of rules, as many as desired and follow this form:

```
<selector1>[, <selector2>] {
  <some property>: <some value>;
  <some other property>: <some other value>;
  ...
}
```

CSS rules have:

- One or more selectors: determines **which** elements that will be affected. When there is multiple selectors, these are separated with a comma.
- Zero or more property-value pairs: determines the visual properties that will be altered.
