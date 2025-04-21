class PostsController < ApplicationController
  layout false
  Post.all.each do |post|
    define_method post.id do
      render post.view
    end
  end
end
