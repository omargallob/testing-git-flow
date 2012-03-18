class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
  	@post = Post.find(params[:id])
  	render :layout => "show"
  end
end
