class AddCurrencyToPriceRanges < ActiveRecord::Migration[5.0]
  def change
    add_column :price_ranges, :currency, :string
  end
end
