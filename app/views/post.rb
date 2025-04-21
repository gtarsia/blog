class Views::Post < Views::Base
  prop :post, Post, :positional, reader: :private

  def around_template
    super do
      article {
        h1 { post.title }
        yield
      }
    end
  end

  def title = post.title

  def post_title = h1 { post.title }
end
