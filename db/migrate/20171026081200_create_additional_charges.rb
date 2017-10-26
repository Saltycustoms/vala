class CreateAdditionalCharges < ActiveRecord::Migration[5.0]
  def change
    create_table :additional_charges do |t|
      t.integer :delivery_method_id
      t.integer :surchage
      t.integer :buffer
      t.boolean :enable, default: false

      t.timestamps
    end
  end
end
