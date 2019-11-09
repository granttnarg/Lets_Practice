class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    if @song.save
      redirect_to song_path(@song)
    else
      render :new
    end
  end

private

  def song_params
    params.require(:song).permit(:artist, :name, :native_bpm, :info, :photo)
  end

  def create_sheet_music
  sheets = params.dig(:song, :pictures) || []
    sheets.each do |sheet|
      @song.pictures.create(photo: sheet)
    end
  end


end
