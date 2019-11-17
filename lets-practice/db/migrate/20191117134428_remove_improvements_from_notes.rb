class RemoveImprovementsFromNotes < ActiveRecord::Migration[5.2]
  def change
    remove_column :notes, :improvements, :text
  end
end
