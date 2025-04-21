class Views::Post < Components::Base
  prop :post, Post, :positional, reader: :private

  def view_template
    render "components/posts/#{post.id}".classify.constantize.new
  end
end
