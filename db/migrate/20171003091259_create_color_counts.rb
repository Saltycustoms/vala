class CreateColorCounts < ActiveRecord::Migration[5.0]
  def change
    create_table :color_counts do |t|
      t.integer :color_count
      t.integer :price_cents
      t.string :currency
      t.integer :price_range_id

      t.timestamps
    end
  end
end
