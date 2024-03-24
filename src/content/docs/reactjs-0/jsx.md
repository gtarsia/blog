---
title: JSX
---

Consider the following code:

```tsx
function MyComponent() {
  const el = (
    <div className="main">
      <h1>This is a title</h1>
      <div>Some content</div>
    </div>
  );
}
```

Is it JavaScript code? Is it HTML code? Neither. This is JSX code.

## Enter JSX

JSX which stands for (JavaScript XML) is a enhancement to JavaScript by adding syntax that is HTML-like.

It is a syntax

```ts
function MyComponent() {
  const el = React.createElement(
    "div",
    { className: "main" },
    React.createElement("h1", null, "This is a title"),
    React.createElement("div", null, "Some content"),
  );
}
```

I think part of React's massive success has to do with JSX.

From your perspective it might seem that we are declaring an HTML element `h1` into a JavaScript variable named `el` but that's not exactly t
