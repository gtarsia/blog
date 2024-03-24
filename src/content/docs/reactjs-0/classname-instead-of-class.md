---
title: className instead of class
---

Remember the `class` attribute explained in <mark style="background: #FF5582A6;">mention where css class are explained</mark>

Well, when you write JSX code, to set that specific attribute you should use `className` instead.

For example, check the following JSX code:

❌ This is using `class`, bad for React/JSX.

```jsx
const el = <div class="title"></div>;
```

✅ This is using `className`, which is OK for React/JSX.

```jsx
const el = <div className="title"></div>;
```

I'll be honest and give my opinion that I have yet to understand why they designed it this way.
The easiest explanation is that `class` already is a reserved keyword in JS, and because JSX is a built on top of JS there could be conflicts.

Other libraries that have their own JSX-like code don't have this issue.
