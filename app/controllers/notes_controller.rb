class NotesController < ApplicationController
  def create
    @note = Note.new(params[:note])
    if @note.save
      redirect_to :back
    else
      errors[:notices] << "note couldn't be saved for some reason"
      redirect_to :back
    end
  end

  def destroy
    @note = Note.find(params[:id])
    @note.destroy
    redirect_to :back
  end
end
