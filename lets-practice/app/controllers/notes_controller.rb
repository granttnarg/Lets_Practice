class NotesController < ApplicationController
  def create
    @song = Song.find(params[:song_id])
    @note = Note.new(note_params)
    @note.song = @song
    if @note.save
      respond_to do |format|
        format.html { redirect_to song_path(@song) }
        format.js
      end
    else
      respond_to do |format|
        format.html { render 'songs/show' }
        format.js
      end
    end
  end

  private

  def note_params
    params.require(:note).permit(:description, :bar_progress, :rating, :date, :prac_bpm)
  end
end

