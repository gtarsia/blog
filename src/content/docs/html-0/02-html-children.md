---
title: HTML Children
---

:SiHtml5: elements can have children.

In our previous subject we saw:

```html
<div>Hello world!</div>
```

Everything that is placed between matching open and close tags of an element will be considered children of that element.

In our example, the `div` element we declared has only one child, the text "Hello world!".

Elements can have as many children as desired, and in turn, these children can have their own children too.

```html
<div>
  <span> Wow, I'm inside a span! </span>
  <div>Huh, I'm inside a div!</div>
  Huh, I'm inside the outermost div!
</div>
```

In this example, we have one `div` which has three children:

1. A `span` element with only one child, the text "Wow, I'm inside a span!"
2. A different `div` element with only one child, the text "Huh, I'm inside a div!"
3. The text "Huh, I'm inside the outermost div!"

## What about indentation

[[Indentation]] has nothing to do with this hierarchy of parents and children. We can have the previous example in a single line:

```html
<div>
  <span>Wow, I'm inside a span!</span>
  <div>Huh, I'm inside a div!</div>
</div>
```

... and that would be exactly the same as before. The reason we **tend** to add indentation is (mostly) because of the visual comfort when we're editing files. And I emphasize **tend** because sometimes it's (subjectively) ok to skip indenting, like this:

```html
<div>
  <span>Wow, I'm inside a span!</span>
  <div>Huh, I'm inside a div!</div>
</div>
```
