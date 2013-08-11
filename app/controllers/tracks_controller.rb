class TracksController < ApplicationController
  def create
    @track = track.new(params[:track])
    if @track.save
      redirect_to tracks_url
    else
      errors[:notices] << "track couldn't be saved for some reason"
      redirect_to new_track_url
    end
  end

  def destroy
    @track = track.find(params[:id])
    @track.destroy
    redirect_to tracks_url
  end

  def edit
    @track = track.find(params[:id])
    @bands = Band.all
    render :edit
  end

  def new
    @bands = Band.all
    render :new
  end

  def show
    @track = track.find(params[:id])
    @tracks = @track.tracks
    render :show
  end

  def update
    @track = track.find(params[:id])
    @track.update_attributes(params[:track])
    redirect_to tracks_url
  end
end
