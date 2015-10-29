class TagsController < ApplicationController
  def new
    @tag = Tag.new

    respond_to do |format|
      format.html { redirect_to root_path }
      format.js
    end
  end

  def create
    @tag = Tag.new(tag_params)
    if @tag.save
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js
      end
    else
      flash[:notice] = "write something, friend."
      redirect_to root_path
    end
  end

  private
  def tag_params
    params.require(:tag).permit(:name)
  end
end
