class Admin::AlbumsController < Admin::BaseController
  # GET /albums
  # GET /albums.json
  def index
    @albumable = find_albumable
    if @albumable.present?
      @albums = @albumable.albums
    else
      @albums = Album.all    
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @albums }
    end
  end

  # GET /albums/1
  # GET /albums/1.json
  def show
    @albumable = find_albumable
    @album = Album.find(params[:id])
    @upload = @album.uploads.build
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @album }
    end
  end

  # GET /albums/new
  # GET /albums/new.json
  def new
    @album = Album.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @album }
    end
  end

  # GET /albums/1/edit
  def edit
        @albumable = find_albumable
    @album = Album.find(params[:id])
  end

  # POST /albums
  # POST /albums.json
  def create
        @albumable = find_albumable
    @album = Album.new(params[:album])

    respond_to do |format|
      if @album.save
        format.html { redirect_to polymorphic_url([:admin,@albumable,@album]), notice: 'Album was successfully created.' }
        format.json { render json: admin_album_path(@album), status: :created, location: @album }
      else
        format.html { render action: "new" }
        format.json { render json: @album.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /albums/1
  # PUT /albums/1.json
  def update
            @albumable = find_albumable
    @album = Album.find(params[:id])

    respond_to do |format|
      if @album.update_attributes(params[:album])
        format.html { redirect_to polymorphic_url([:admin,@albumable,@album]), notice: 'Album was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @album.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /albums/1
  # DELETE /albums/1.json
  def destroy
    @album = Album.find(params[:id])
    @album.destroy

    respond_to do |format|
      format.html { redirect_to admin_albums_url }
      format.json { head :no_content }
    end
  end
  
  private 
  def find_albumable
    params.each do |name, value|
      if name =~ /(.+)_id$/
        return $1.classify.constantize.find(value)
      end
    end
    nil
  end
end
