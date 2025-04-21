class Views::About::Index < Views::Base
  def title = "gtarsia.dev"

  def view_template
    article {
      div {
        h1 { "I'm Guido" }

        p { "I've been a developer for 12 years. " }
        p { "I have a wife and two daughters." }
        p { "I like videogames and coding." }
      }
    }
  end
end
