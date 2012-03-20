class PostsController < ApplicationController
  def index
    @posts = Post.published
  end

  def show
  	@post = Post.find(params[:id])

   	set_meta_tags :title => "#{@post.category.title} | "+ @post.title
  	render :layout => "show"

  end

end
