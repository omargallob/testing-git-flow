class ViewerController < ApplicationController
  def show
    @page = Page.find_by_name(params[:name].gsub("_"," ")||"home")    
    if @page.name == "home"
    	@posts = Post.published
    end

    if @page.metatag
    	set_meta_tags :title => @page.metatag.title,
    								:description => @page.metatag.description,
    								:keywords => @page.metatag.keywords
    end
  end



end
