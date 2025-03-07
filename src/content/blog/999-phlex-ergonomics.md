---
title: "Improving Phlex Ergonomics... or trying to"
description: "Phlex helpers that I'd like"
pubDate: "March 06 2025"
heroImage: "/blog-placeholder-4.jpg"
published: true
---

Reading time: 20 minutes

_Just a heads up: this post is written by someone who cares to use Phlex within Rails
(even though I'm aware that Phlex is framework agnostic)_

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
# app/components/base.rb
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

That **is** much better to me than `Components::Card(variant: "warning")`:  
Declarative and snake case!

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

We are future proof now!

### But, what about components that are more deeply namespaced?

Such as `Components::User::Avatar`.

Should that be `x_user_avatar`? That's fine.
But what if you also have `Components::User`.

It's worth mentioning here that Phlex should encourage the
Rails convention of plural for namespaces to avoid
trying to make a module a class.

Doing so results in:
- `Components::User` → `x_user`
- `Components::Users::Avatar` → `x_users_avatar`

### Configurability with nice generated defaults

There could be some prefix setting, and, via some method, Phlex
could scan all the components and define them on the base class.

It could be `c_` for components and `v_` for views. That way you'd
know if a Phlex "thing" is a component or a view.

```ruby
# app/components/base.rb
class Components::Base < Phlex::HTML
  Phlex.define_helpers(components: :c_, views: :v_)
end
```

Resulting in these helpers:
- `c_user`
- `c_users_avatar`
- `v_admin_index` (assume we have a `Views::Admin::Index` component)

### Solution #2: Use more descriptive names for components

We mentioned `c_user_avatar`.
But at that point, why not just use `user_avatar`?

In fact, it would be extremely unlikely that the HTML standard adds the `<user-avatar>` element.

But, while this solution looks better for deeply nested components, Phlex would no longer be able to autogenerate these helper methods.

You would have to manually write these, making sure
to use a prefix only when there's gonna be a conflict.

And, coming to think of it, I like the idea of `c_` and `v_`, and we would be losing that.

### Problem #3: These helpers would only work in Phlex components

To solve this, I think it'd be **AWESOME** to have this automatic helper generation
happen within an actual Rails helper, which could be in turn be included in the
project's base component and in the application helper.

```ruby

# app/helpers/phlex_helper.rb
module PhlexHelper
  Phlex.define_helpers(components: :c_, views: :v_)
end
```

```ruby
# app/helpers/application_helper.rb
module ApplicationHelper
  include PhlexHelper
  ...
end
```

```ruby
# app/components/base.rb
class Components::Base < Phlex::HTML
  include PhlexHelper
  ...
end
```

That way your helpers would be available both in Rails views and Phlex components,
which would make the experience very consistent.

### Solution #3: Use classes instead of helper methods

I've seen code like this, eg: RubyUI, and I'm personally not a fan.
```ruby
Accordion do
  AccordionItem do
    AccordionTrigger do
      p(class: "font-medium") { "What is PhlexUI?" }
      AccordionIcon()
    end

    AccordionContent do
      p(class: "text-sm pb-4") do
        "PhlexUI is a UI component library for Ruby devs who want to build better, faster."
      end
    end
  end
end
```

My reasons are:
- Executing a class and passing a block to it is not idiomatic.
  I think it's unnecessary here and that it needlessly scares off idiomatic rubyists.
- It also scares off Rails developers because they are more used to imperative code
  in the templates (helpers, helpers, helpers).
- In Rails, top-level classes defined within `app/` that don't have suffixes should be
  sparingly used. That is mostly reserved for Rails Models.
- In that very example, `p`, a method, is called, and then there's these "class calls",
  mixing up idiomatic ruby code with non-idiomatic ruby code.

_Keep in mind this is not a great example, since it's better to do something like this (I'm just using an example to illustrate):_
```ruby
Accordion do |t|
  t.item do
    t.trigger do
```



### Solution #4: Use suffixes instead of prefixes

This smells way more rails-like, because if you have `apps_user_path`, why not have
`apps_users_view`. And actually, that looks **VERY GOOD** (to me).

I would argue that would be appealing to most rails devs.

The problem is that `component` is quite the word.
And `users_avatar_component` is quite the typing. And while it is
exquisitely clear what the thing is/does, it's gonna make the
template too repetitive, because components will be more
frequently used:
```ruby
accordion_component do
  accordion_item_component do
    accordion_trigger_component do
      p(class: "font-medium") { "What is PhlexUI?" }
      accordion_icon_component()
    end
  end
end
# yuck
```

So maybe, suffix views with `_view`, and prefix components with `$`, jQuery style?
Too bad that's not allowed in Rails. Time to get some sleep.

### Solution #5: Use a `!` suffix for components

It is common for rubyists to use `!` to indicate modifying or dangerous behaviour.
But we could use to just indicate _different_ behaviour. I like this idea a lot.

```ruby
accordion! do
  accordion_item! do
    accordion_trigger! do
      p(class: "font-medium") { "What is PhlexUI?" }
      accordion_icon!
    end
  end
end
# looks good to me!
```
