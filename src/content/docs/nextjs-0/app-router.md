---
title: App router
---

The App Router works by using the structure of the `app` directory in your NextJS project.

Consider this NextJS project example:

```
📁 app
 ├ 📄 page.tsx
 └ 📁 dashboard
    ├ 📁 settings
    │  └ 📄 page.tsx
    ├ 📄 analytics.tsx
    └ 📄 page.tsx
```

If any descendant file inside `app` is named `page.tsx`, that file is used as a route.

In our example, NextJS would provide the following routes:

- `/`
- `/dashboard`
- `/dashboard/settings`

Notice how there was a `analytics.tsx` file but didn't result in a a `app/dashboard/analytics` route. If we wanted to have such route, we would need to create a `app/dashboard/analytics/page.tsx`.

> [!tip] `page.js`, `page.jsx` and `page.ts` are also supported, but we'll focus on `page.tsx` in this course.

Every `page.tsx` files inside `app` is expected to have a `function` that returns `JSX.Element` as a **default export**, like so:

```tsx
export default function Root() {
  return <div>Hello World</div>;
}
```

If we wrote that in the `app/page.tsx` file, when you browse `/` you'll get page with nothing but `Hello World` .
