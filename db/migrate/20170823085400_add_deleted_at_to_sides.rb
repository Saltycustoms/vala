class AddDeletedAtToSides < ActiveRecord::Migration[5.0]
  def change
    add_column :sides, :deleted_at, :datetime
    add_index :sides, :deleted_at
  end
end
