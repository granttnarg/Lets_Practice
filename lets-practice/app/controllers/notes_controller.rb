class NotesController < ApplicationController
  def create
    @song = Song.find(params[:song_id])
    @note = Note.new(note_params)
    @note.song = @song
    if @note.save
      redirect_to song_path(@song)
    else
      render 'songs/show'
    end
  end

  private

  def note_params
    params.require(:note).permit(:description, :bar_progress, :rating, :date, :prac_bpm)
  end
end
