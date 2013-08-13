class TracksController < ApplicationController
  before_filter :authenticate_user!

  include TracksHelper

  def create
    @track = Track.new(params[:track])
    if @track.save
      redirect_to album_url(@track.album)
    else
      flash[:notice] ||= []
      flash[:notice] << "track couldn't be saved for some reason"
      redirect_to new_album_track_url(@track.album)
    end
  end

  def destroy
    @track = Track.find(params[:id])
    @track.destroy
    redirect_to tracks_url
  end

  def edit
    @track = Track.find(params[:id])
    @album = @track.album
    render :edit
  end

  def new
    @album = Album.find(params[:album_id])
    @album_artist = @album.band
    render :new
  end

  def show
    @track = Track.find(params[:id])
    @lyrics = ugly_lyrics(@track.lyrics)
    @notes = @track.notes
    render :show
  end

  def update
    @track = Track.find(params[:id])
    @track.update_attributes(params[:track])

    @album = Album.find(params[:album_id])
    redirect_to album_track_url(@album, @track)
  end
end
