class Views::Home::Index < Views::Base
  def title = "gtarsia.dev"

  def view_template
    article {
      div {
        h1(class: "animated-underline") { "Welcome to gtarsia.dev!" }
        p { "Hi! I'm Guido." }
        p {
          plain "I'm a "
          a(href: posts_im_a_recovering_java_script_developer_path) { "recovering JavaScript developer" }
          plain "."
        }
        p {
          plain "I like cramming as many CSS effects as I can into this site."
          br
          plain "As you can see."
          br
          plain "It's fun!"
        }
        p {
          plain "I wrote this site in Rails, Phlex, Stimulus and open-props, and it's hosted at Hetzner."
          br
          a(href: "site-tack") { "Click here" }
          plain " to learn more about it."
        }
        p {
          plain "I've been coding for about 12 years now."
          br
          plain "Yes, I'm old."
          br
          plain "I even used jQuery."
        }
        p {
          plain "Here's my socials:"
          br
          a(href: "https://x.com/gtarsia_dev") { "Link" }
          br
          plain "More like social, singular."
        }
      }
    }
  end
end
