class RemoveColumnsFromColorCounts < ActiveRecord::Migration[5.0]
  def change
  	remove_column :color_counts, :price_cents, :integer
  	remove_column :color_counts, :currency, :string
  	remove_column :color_counts, :price_range_id, :integer
  end
end
