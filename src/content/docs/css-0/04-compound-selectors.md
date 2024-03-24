---
title: Compound selector
---

Multiple selectors can be combined into one with a **Compound Selector**.

```css
div#main.poetry.text { ... }
```

❌ Does not match. Even though it is a `div` with `id="main"` and includes class `poetry`, it does not include class `text`.

```html
<div id="main" class="poetry"></div>
```

✅ Does match because it now includes `text` class.

```html
<div id="main" class="poetry text"></div>
```
