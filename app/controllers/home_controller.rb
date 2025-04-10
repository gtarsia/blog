class HomeController < ApplicationController
  layout false
  def index
    render Views::Home::Index.new
  end
end
