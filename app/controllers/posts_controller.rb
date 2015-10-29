class PostsController < ApplicationController
  def new
    @post = Post.new

    respond_to do |format|
      format.html { redirect_to homes_path }
      format.js
    end
  end
end
