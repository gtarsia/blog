class Views::Posts::ImARecoveringJavaScriptDeveloper < Views::Base
  def view_template
    article {
      h1 { "I'm a recovering JavaScript developer" }
      p { "Write some stuff here." }
    }
  end
end
