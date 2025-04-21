class Views::Posts::ImARecoveringJavaScriptDeveloper < Views::Post
  def view_template
    p { "I've done JavaScript for most of my career, and I'm glad that stage is over. " }
    p { "I don't intend to not write any JavaScript at all." }
    p { "I just don't enjoy writing apps where JS is the primary language, because..." }
    h2 { "JavaScript ecosystem is a mess, blah blah..." }
    p { "It pains me to say something so obvious." }
  end
end
