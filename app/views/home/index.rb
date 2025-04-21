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
          plain "My plan with this site is to cram as many CSS effects as I can into it."
          br
          plain "It's fun!"
        }
        p {
          plain "Here's a couple details about the stack used:"
          ul {
            li { "Web Framework: Ruby on Rails" }
            li { "Client Framework: Stimulus" }
            li { "Views: Phlex" }
            li { "CSS: open-props" }
            li { "Hosting: Hetzner" }
            li { "DNS: CloudFlare" }
          }
        }
        p {
          plain "I talk a bit more about "
          a(href: "site-tack") { "the stack here" }
          plain "."
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
