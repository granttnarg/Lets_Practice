class CreateNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :notes do |t|
      t.date :date
      t.integer :prac_bpm
      t.text :description
      t.integer :bar_progress
      t.text :improvements
      t.integer :rating
      t.references :song, foreign_key: true

      t.timestamps
    end
  end
end
