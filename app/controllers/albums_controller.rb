class AlbumsController < ApplicationController
  before_filter :authenticate_user!

  def create
    @album = Album.new(params[:album])
    if @album.save
      redirect_to albums_url
    else
      flash[:notice] ||= []
      flash[:notice] << "Album couldn't be saved for some reason"
      redirect_to new_album_url
    end
  end

  def destroy
    @album = Album.find(params[:id])
    @album.destroy
    redirect_to albums_url
  end

  def edit
    @album = Album.find(params[:id])
    @bands = Band.all
    render :edit
  end

  def index
    @albums = Album.all
    render :index
  end

  def new
    @bands = Band.all
    render :new
  end

  def show
    @album = Album.find(params[:id])
    @tracks = @album.tracks
    render :show
  end

  def update
    @album = Album.find(params[:id])
    @album.update_attributes(params[:album])
    redirect_to albums_url
  end
end
