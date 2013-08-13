class NotesController < ApplicationController
  before_filter :authenticate_user!

  def create
    @note = Note.new(params[:note])
    if @note.save
      redirect_to :back
    else
      flash[:notice] ||= []
      flash[:notice] << "note couldn't be saved for some reason"
      redirect_to :back
    end
  end

  def destroy
    @note = Note.find(params[:id])
    @note.destroy
    redirect_to :back
  end
end
