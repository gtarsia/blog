---
title: What HTML is
---

As mentioned previously, HTML (which stands for HyperText Markup Language) is the structure, the skeleton of websites.

_(From now on, instead of "HTML" we use the :SiHtml5: emoji to refer to HTML. It's a 5 because it is the latest and final version of HTML, referred to as HTML5)_

Here's an extremely simple piece of :SiHtml5: code to get used to it:

```html
<div>
  <div>Wow!</div>
  <span>This is HTML!</span>
</div>
```

In HTML, elements are [[declared]] using tags.
There's 3 types of tags, we'll use the `div` element as an example:

- Open tag: `<div>` (also, opening tag)
- Close tag: `</div>` (also. closing tag)
- Self-closing tag: `<div />` (we won't care about this one for a while)

## Open and close tags

For every open tag on an HTML document **there has to be** a close tag with the same name.

❌ This is invalid, since there's no closing `</div>` tag corresponding to the open `<div>` tag.

```html
<div>Hello world!</div>
```

✅ This is ok, every open tag has a matching close tag.

```html
<div>Hello world!</div>
```

What's happening here is we have one `div` that has two children: one `span` element and one `div` element.
