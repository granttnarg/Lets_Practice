class MainController < ApplicationController
  before_action :force_json, only: :search

  def index; end

  def search
      name_songs = Song.ransack(name_cont: params[:q]).result(distinct: true)
      artist_songs = Song.ransack(artist_cont: params[:q]).result(distinct: true)
      key_songs = Song.ransack(key_cont: params[:q]).result(distinct: true)
      info_songs = Song.ransack(info_cont: params[:q]).result(distinct: true)
      bpm_songs = Song.ransack(native_bpm_cont: params[:q]).result(distinct: true)

      # @songs = name_songs.or(artist_songs).or(key_songs).or(info_songs)
      @songs = Song.where("name LIKE ? or artist LIKE ? or key LIKE ? or info LIKE ? or native_bpm >= ?",
        "%#{params[:q]}%",
        "%#{params[:q]}%",
        "%#{params[:q]}%",
        "%#{params[:q]}%",
         "#{params[:q]}")
  end

  private

  def force_json
    request.format = :json
  end
end


# Movie.where("title ILIKE ?", "%#{params[:query]}%")

# .where("native_bpm = '#{params[:q]}'")

# User.where(["name = '%s' and email = '%s'", "Joe", "joe@example.com"])

# SELECT DISTINCT "songs".* FROM "songs" WHERE ((("songs"."name" LIKE '%sym%' OR "songs"."artist" LIKE '%sym%') OR "songs"."key" LIKE '%sym%') OR "songs"."info" LIKE '%sym%')
