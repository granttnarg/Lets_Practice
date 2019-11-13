class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :name
      t.string :artist
      t.integer :native_bpm
      t.date :date_uploaded
      t.text :info
      t.string :sheet_music
      t.string :artwork

      t.timestamps
    end
  end
end
