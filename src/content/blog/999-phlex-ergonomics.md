---
title: "Exploring Phlex Ergonomics"
description: "Adding methods to base classes"
pubDate: "March 06 2025"
heroImage: "/blog-placeholder-4.jpg"
published: true
---

Currently, Phlex has a feature called [Kits](https://www.phlex.fun/components/kits.html).

Kits make instantiating components easier:

```ruby
# before
div do
  render Components::Card.new(variant: "warning")
end

# after
div do
  Components::Card(variant: "warning")
end
```

While it is an upgrade, I think it could be nicer.

### Adding a "helper" method in base component class

We could alter our base component class, like so:

```ruby
class Components::Base < Phlex::HTML
  # ...

  def card(*, **, &)
    render(Components::Card.new(*, **), &)
  end

  # ...
end
```

... and then the template would be this:

```ruby
div do
  card(variant: "warning")
end
```

Much nicer!

But, from this arise some problems that I can think of:

**Problem #1: Dev might want to use the original element, as is**

Assume we implemented our own `button` method instead.
Sometimes developers need to use the original `<button>` without
anything extra for a specific purpose.

**Problem #2: Collision with future standard elements**

What if the HTML standard adds the `<card>` element?
This would make it not future proof.

Let's explore a couple of solutions to these problems:

### Solution #1: Using prefixed helpers

In this blog post, they advocate for using `x_`, as a prefix for ViewComponents.

[Using Rails helpers (x_component) for rendering ViewComponents](https://answers.abstractbrain.com/using-rails-helpers-x-component-for-rendering-viewcomponents)

I really dislike `x_`, but let's use it as an example because I can't:
think of a better one _atm_.
```ruby
div do
  x_card(variant: "warning")
end
```

That **is** better to me than `Components::Card(variant: "warning")`:  
Declarative, snake case, and future proof!

### But, what about components that are more deeply namespaced?

Such as `Components::User::Avatar`.

Should that be `x_user_avatar`? That's fine.
But what if you also have `Components::User`.

It's worth mentioning here that Phlex should encourage the
Rails convention of plural for namespaces to avoid
trying to make a module a class.

Doing so results in:
- `Components::User` (`x_user`)
- `Components::Users::Avatar` (`x_avatar_user`)

### Configurability with nice auto generated defaults

There could be some prefix setting, and, via some method, Phlex
could scan all the components and define them on the base class.

It could be `c_` for components and `v_` for views. That way you'd
know if a Phlex "thing" is a component or a view.

### Solution #2: Use more descriptive names for components

We mentioned `c_user_avatar`.
But at that point, why not just use `user_avatar`?

Actually, it would be extremely unlikely that the HTML standard adds the `<user-avatar>` element.

But, while this solution looks better for deeply nested components, Phlex would no longer be able to autogenerate these helper methods.

You would have to manually write these, making sure
to use a prefix only when there's gonna be a conflict.

We would also no longer be able to tell Phlex views from components.

### Problem #3: These helpers would only work in Phlex components

To solve this, I think it'd be **AWESOME** to have this automatic helper generation
happen within an actual Rails helper, which could be in turn be included in the
project's base component.

```ruby

# app/helpers/phlex_helper.rb
module PhlexHelper
  Phlex.generate_helpers(:components, :views)
end
```

```ruby
# app/components/base.rb
class Components::Base < Phlex::HTML
  include PhlexHelper
  ...
end
```

That way your helpers are available both in Rails views and Phlex components.

