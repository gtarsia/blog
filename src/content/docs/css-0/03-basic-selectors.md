---
title: Basic selectors
---

There's many CSS selectors that you can use. We're gonna go through the three most basic selectors.

## Type selector

```css
div { ... }
```

This was presented in [[11 - What CSS is]].
This selector matches **all** the elements with the same name provided.

✅ Matches the element:

```html
<div>Hi</div>
```

❌ Does not match because `span` is not a `div`:

```html
<span>Hey</span>
```

✅ Matches all these 3 `<div>`:

```html
<div>
  Hey
  <div>Hi</div>
</div>
<div>Ho</div>
```

Notice how it matches the `div` inside the first `div`.

## Id selector

```css
#main { ... }
```

When a selector starts with `#` (number sign), the selector is an **ID Selector**.

The **ID Selector** matches the **first** element whose `id` attribute value equals to what comes after the `#` char. It always matches a single element.

✅ This element matches

```html
<span id="main">Hi</span>
```

✅ This element matches

```html
<span id="main">Hey</span>
```

❌ Doesn't match because `mike` is not equal to `main`

```html
<span id="mike">Ho</span>
```

## Class selector

```css
.poetry { ... }
```

When a selector with `.` (dot), the selector is a **Class Selector**.

The **Class Selector** matches **all** the elements that include the given class name after the `.`.

✅ This element matches:

```html
<div class="emphasis poetry">Hi</div>
```

❌ Doesn't match because the element does not include `poetry`

```html
<span class="fantasy">Hey</span>
```

✅ Both of these elements also match:

```html
<div class="poetry">Hi</div>
<span class="poetry">Hey</span>
```
