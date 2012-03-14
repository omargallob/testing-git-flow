class ViewerController < ApplicationController
  def show
    @page = Page.find_by_name(params[:name].gsub("_"," ")||"home")    
  end
end
