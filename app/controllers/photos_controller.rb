class PhotosController < ApplicationController
  def new
    @photo = Photo.new
  end

  def create
    @album = Album.find(params[:album_id])
    @photo = @album.photos.new(params[:photo])
    if @photo.save
      flash[:success] = "Photo saved succesfully!"
      redirect_to @photo
    else
      render 'new'
    end  
  end
  
  def index
    @photos = Photo.paginate(page: params[:page])
  end

  def show
    @photo = Photo.find(params[:id])
  end

  def edit
    @photo = Photo.find(params[:id])
  end

  def update
    @photo = Photo.find(params[:id])
    @photo.update_attributes(params[:photos])
    if params[:cover]
      unless @photo.album.cover.nil?
        @photo.album.cover.album_cover_id = nil
        @photo.album.cover.save
      end  
      @photo.album_cover_id = @photo.album.id
    end
    
    if @photo.save
      flash[:success] = "Profile update"
      redirect_to @photo
    else
      render 'edit'
    end
  end
  
  def destroy
  end
end
