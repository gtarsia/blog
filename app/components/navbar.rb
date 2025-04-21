# frozen_string_literal: true

class Components::Navbar < Components::Base
  include Phlex::Rails::Helpers::LinkTo

  def view_template
    nav(class: "navbar") do
      div(class: "navbar-content") do
        link_to("/", class: "navbar-brand") { "gtarsia.dev" }
        navigation_links
      end
    end
  end

  private

  def navigation_links
    div(class: "navbar-links") do
      link_to("About", "/about")
      link_to("Posts", "/posts")
      link_to("Contact", "/contact")
    end
  end
end
