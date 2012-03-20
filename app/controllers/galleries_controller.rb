class GalleriesController < ApplicationController
  def index
  	@albums = Album.all.delete_if{|x| x.uploads.count == 0}
  end

  def show
  end
end
