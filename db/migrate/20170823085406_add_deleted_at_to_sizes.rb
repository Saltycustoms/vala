class AddDeletedAtToSizes < ActiveRecord::Migration[5.0]
  def change
    add_column :sizes, :deleted_at, :datetime
    add_index :sizes, :deleted_at
  end
end
