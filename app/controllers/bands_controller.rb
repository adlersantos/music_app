class BandsController < ApplicationController
  def create
    @band = Band.new(params[:band])
    if @band.save
      redirect_to bands_url
    else
      flash[:notices] ||= []
      flash[:notices] << "Band couldn't be saved for some reason"
      redirect_to new_band_url
    end
  end

  def destroy
    @band = Band.find(params[:id])
    @band.destroy
    redirect_to bands_url
  end

  def edit
    @band = Band.find(params[:id])
    render :edit
  end

  def index
    @bands = Band.all
    render :index
  end

  def new
    render :new
  end

  def show
    @band = Band.find(params[:id])
    render :show
  end

  def update
    @band = Band.find(params[:id])
    @band.update_attributes(params[:band])
    redirect_to bands_url
  end
end
