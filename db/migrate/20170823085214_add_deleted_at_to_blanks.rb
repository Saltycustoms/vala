class AddDeletedAtToBlanks < ActiveRecord::Migration[5.0]
  def change
    add_column :blanks, :deleted_at, :datetime
    add_index :blanks, :deleted_at
  end
end
