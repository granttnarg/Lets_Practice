json.songs do
  json.array!(@songs) do |song|
    json.id song.id
    json.name song.name
    json.artist song.artist
    json.key song.key
    json.chords song.chords
    json.info song.info
    json.native_bpm song.native_bpm
    json.sheet_music song.sheet_music
    json.photo song.photo
    json.time_signature song.time_signature
  end
end
