class PostsController < ApplicationController
  def index
    @posts = Post.published
  end

  def show
  	@post = Post.find(params[:id])
  	render :layout => "show"
  end

end
