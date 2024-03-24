---
title: Improperly closed tags
---

Let's discuss a couple of bad scenarios in your HTML pages and how the browsers handle them.

## What if I don't close an open tag?

```html
<div>Hello world!</div>
```

Browsers actually detect that you didn't close that open tag and they close it for you, adding the proper `</div>` at the end internally.

## What if close an open tag twice accidentally

```html
<div>
  Hello world!
</div></div>
```

Best case scenario: we're doing this at the end of the page. In which case, nothing happens, the browser ignores that extra closing tag for you.

Worst case scenario: there's more elements after this extra closing tag. Usually that will cause other elements to look weird.

## What if I mistype an element name?

If you mistype one of the tags (either the open or the close), then that might cause the following elements to look weird, because this is essentially the same as opening a tag and not closing it.

If you mistype the name in both tags then it will just render except it won't have whatever default CSS props had it been typed correctly.
So, that element will look different, and it might also make other elements around to look weird.

> [!tip] Modern development tools tend to find these problems for you
> **Code editors** usually have a "auto indent" command that lets you every line,
> letting you easily visualize when something is not ok with your HTML.
> **Prettier** is a CLI that is used to auto format your code in a very specific way, avoiding this problems for you.
> **TypeScript** goes further and gives errors in **JSX** when there's missing or mismatching tags, letting you know before rendering on the browser.
