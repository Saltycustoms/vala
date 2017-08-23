class AddDeletedAtToPriceRanges < ActiveRecord::Migration[5.0]
  def change
    add_column :price_ranges, :deleted_at, :datetime
    add_index :price_ranges, :deleted_at
  end
end
