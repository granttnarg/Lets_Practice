class AddTimeSignatureToSongs < ActiveRecord::Migration[5.2]
  def change
    add_column :songs, :time_signature, :string
  end
end
