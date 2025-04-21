class PostsController < ApplicationController
  def show
    post = Post.find(params[:id])
    render Views::Post.new(post)
  end
end
