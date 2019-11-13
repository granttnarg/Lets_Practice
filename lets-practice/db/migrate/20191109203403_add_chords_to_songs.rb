class AddChordsToSongs < ActiveRecord::Migration[5.2]
  def change
    add_column :songs, :chords, :string
  end
end
