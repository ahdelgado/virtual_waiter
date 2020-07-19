class ChangeCommentsToNotesOnItems < ActiveRecord::Migration[5.2]
  def change
    rename_column :items, :comments, :notes
  end
end
