class GalleriesController < ApplicationController
  def index
  	@albums = Album.all.delete_if{|x| x.uploads.count == 0}
  end

  def show
  	@album = Album.find_by_id(params[:id])
  end
end
