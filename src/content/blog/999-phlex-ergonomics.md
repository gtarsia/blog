---
title: "Improving Phlex Ergonomics... or trying to (in Rails)"
description: "Phlex helpers that I'd like"
pubDate: "March 06 2025"
heroImage: "/blog-placeholder-4.jpg"
published: true
---

Reading time: 10 minutes

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

While it is an upgrade, it is limited in that it only works within Phlex components
Let's write some nice helpers to make this syntax nicer.

### Using shebang helpers

```ruby
# app/helpers/phlex_helper.rb
class PhlexHelper < Phlex::HTML
  def card!(*, **, &)
    render(Components::Card.new(*, **), &)
  end
end
```

This is great because it works in ERB as well

The shebang is also great because it avoid collisions with native HTML elements.  
I saw some people using prefixes instead (like `x_card`) but I don't like that.

### Macro'ing these helpers

```ruby
# app/helpers/phlex_helper.rb
module PhlexHelper
  def self.define_component(name, to: name)
    define_method("#{name.to_s.parameterize.underscore}!") do |*args, **kwargs, &block|
      mod = Components.const_get(to.to_s.classify)
      render(mod.new(*args, **kwargs), &block)
    end
  end

  define_component "admin/form" # This defines admin_form! referencing to Components::Admin::Form
  define_component "form", to: "form/form" # This defines form! referencing Components::Form::Form
end
```

### Keep Phlex code in `views/components`

I prefer to keep html/view *code* within views/
I don't like having to switch between `app/views` and `app/components`

So, I do the following in `config/initializers/phlex.rb`:

```ruby
module Components
  extend Phlex::Kit
end

Rails.autoloaders.main.push_dir(
  Rails.root.join("app/views/components"), namespace: Components
)
```

(_I don't do phlex views, nothing against it, just that it collides with this style of
keeping components within views/_)

### Looks like idiomatic ruby code

RubyUI uses this:

```ruby
Accordion do
  AccordionItem do
    AccordionTrigger do
      p(class: "font-medium") { "What is PhlexUI?" }
      AccordionIcon()
    end
  end
end
```

But with this style, it looks like this

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
