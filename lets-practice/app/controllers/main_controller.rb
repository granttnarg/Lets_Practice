class MainController < ApplicationController
  before_action :force_json, only: :search

  def index; end

  def search
      name_songs = Song.ransack(name_cont: params[:q]).result(distinct: true)
      artist_songs = Song.ransack(artist_cont: params[:q]).result(distinct: true)
      key_songs = Song.ransack(key_cont: params[:q]).result(distinct: true)

      @songs = name_songs.or(artist_songs).or(key_songs)
  end

  private

  def force_json
    request.format = :json
  end
end


