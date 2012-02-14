class Admin::UploadsController < Admin::BaseController
  def create
     @upload = Upload.new(params[:upload])
      @album = @upload.album
      if @upload.save
       redirect_to admin_album_path(@album.id)
      else
        flash.now[:notice] = 'Upload was not created.'
        render :action => 'new'
      end
  end

  def destroy
     @upload = Upload.find(params[:id])
     @upload.destroy
       @album = @upload.album
     redirect_to admin_album_path(@upload.album.id)
  end
end
