class AddKeyToSongs < ActiveRecord::Migration[5.2]
  def change
    add_column :songs, :key, :string
  end
end
