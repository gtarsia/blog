---
title: TSX
---

TSX is TypeScript with JSX support. TSX files have the extension `.tsx`

From now on in the course, we'll be exclusively using TSX for code examples

In my opinion, this is a massive improvement since it lets you have typing in your JSX.

```tsx
function Welcome() {
  const hello = 1;
  return <button onClick={hello}></button>;
}
```
