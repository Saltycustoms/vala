class AddCurrencyToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :currency, :string
  end
end
