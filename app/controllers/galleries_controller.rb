class GalleriesController < ApplicationController
  def index
  	@albums = Album.all.delete_if{|x| x.albumable_id != nil}
  end

  def show
  	@album = Album.find_by_id(params[:id])
  end
end
