---
title: React hooks
---

React Hooks is a rework of how React code is written while ensuring backwards compatibility. It was introduced in 2019.

Previously, React components were custom classes that extended `React.Component` like so:

```tsx
class Welcome extends React.Component {
  render() {
    return <h1>Hello, {this.props.name}</h1>;
  }
}
```

But with React Hooks components are built with functions instead of classes. If we move

```tsx
function Welcome() {
  return <h1>Hello, {this.props.name}</h1>;
}
```

React Hooks is the current official way to write React components, as class based components
