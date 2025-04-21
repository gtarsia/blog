class Views::Posts::Index < Views::Base
  def view_template
    ul(style: "list-style: none;") {
      Post.all.each do |post|
        li {
          a(href: post.route, class: "title") {
            h1 { post.title }
            p {
              plain post.date
              br
              plain post.description
            }
          }
        }
      end
    }
    style!
  end

  def style!
    style {
      <<~CSS
      CSS
    }
  end
end
