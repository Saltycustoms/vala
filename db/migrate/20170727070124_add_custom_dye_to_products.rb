class AddCustomDyeToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :custom_dye, :boolean, default: false
  end
end
