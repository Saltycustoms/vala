class CreatePriceRanges < ActiveRecord::Migration[5.0]
  def change
    create_table :price_ranges do |t|
      t.integer :from_quantity
      t.integer :to_quantity
      t.integer :price_cents
      t.integer :lower_rrp_cents
      t.integer :higher_rrp_cents
      t.decimal :commission
      t.belongs_to :product, foreign_key: true

      t.timestamps
    end
  end
end
