class AlbumsController < ApplicationController
  def new
    @album = Album.new
  end

  def create
    @album = Album.new(params[:album])   
    if @album.save
      flash[:success] = "Album saved succesfully!"
      redirect_to @album
    else
      render 'new'
    end  
  end
  
  def index
    @albums = Album.paginate(page: params[:page])
  end

  def show
    @album = Album.find(params[:id])
    @photos = @album.photos.paginate(page: params[:page])
  end

  def edit
    @album = Album.find(params[:id])
  end

  def update
    @album = Album.find(params[:id])
    @album.update_attributes(params[:albums])
    if @album.save
      flash[:success] = "Profile update"
      redirect_to @album
    else
      render 'edit'
    end
  end

  def destroy
  end


end
