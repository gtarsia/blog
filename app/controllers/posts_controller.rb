class PostsController < ApplicationController
  layout false
  def index
    render Views::Posts::Index.new
  end

  Post.all.each do |post|
    define_method post.id do
      render post.view
    end
  end
end
