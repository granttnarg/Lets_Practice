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
    @song = Song.new

  end

private

  def song_params
    parmas.require(:song).permit(:artist, :name, :native_bpm, :year, :date_uploaded, :info, :sheet, :artwork)
  end


end
