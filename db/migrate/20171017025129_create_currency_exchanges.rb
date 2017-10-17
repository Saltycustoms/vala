class CreateCurrencyExchanges < ActiveRecord::Migration[5.0]
  def change
    create_table :currency_exchanges do |t|
      t.string :from
      t.string :to
      t.float :rate

      t.timestamps
    end
  end
end
