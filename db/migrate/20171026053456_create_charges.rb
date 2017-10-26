class CreateCharges < ActiveRecord::Migration[5.0]
  def change
    create_table :charges do |t|
      t.float :from
      t.float :to
      t.integer :value_cents, default: 0
      t.string :area
      t.string :currency
      t.integer :delivery_method_id
      t.integer :product_type_id
      t.string :type

      t.timestamps
    end
  end
end
