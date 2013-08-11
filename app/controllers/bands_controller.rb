class BandsController < ApplicationController
  def create
    @band = Band.new(params[:band])
    if @band.save
      redirect_to bands_url
  end

  def edit
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
end
