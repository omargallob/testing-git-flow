class GalleriesController < ApplicationController
  def index
  	@albums = Album.where(:albumable_id => nil)
  end

  def show
  end
end
