class RainController < ApplicationController
  def index
    render Views::Rain::Index.new
  end
end
