class PostsController < ApplicationController
  def new
    @post = Post.new

    respond_to do |format|
      format.html { redirect_to homes_path }
      format.js
    end
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js
      end
    else
      flash[:notice] = "write something, you goon."
      redirect_to root_path
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :description)
  end
end
