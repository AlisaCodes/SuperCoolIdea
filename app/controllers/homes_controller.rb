class HomesController < ApplicationController
  def index
    @posts = Post.all
    @tags = Tag.all
  end
end
