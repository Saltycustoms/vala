class AddDeletedAtToPrints < ActiveRecord::Migration[5.0]
  def change
    add_column :prints, :deleted_at, :datetime
    add_index :prints, :deleted_at
  end
end
