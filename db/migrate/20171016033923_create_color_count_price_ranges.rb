class CreateColorCountPriceRanges < ActiveRecord::Migration[5.0]
  def change
    create_table :color_count_price_ranges do |t|
      t.integer :from
      t.integer :to
      t.integer :price_cents
      t.string :currency
      t.belongs_to :color_count, foreign_key: true

      t.timestamps
    end
  end
end
