class GalleriesController < ApplicationController
  def index
  	@albums = Album.all.delete_if{|x| x.albumable_id != nil}
  	@page = Page.find_by_name("gallery")
    if @page.metatag
    	set_meta_tags :title => @page.metatag.title,
    								:description => @page.metatag.description,
    								:keywords => @page.metatag.keywords
    end
  end

  def show
  	@album = Album.find_by_id(params[:id])
		set_meta_tags :title => "Gallery | #{@album.title}" 								
  end
end
