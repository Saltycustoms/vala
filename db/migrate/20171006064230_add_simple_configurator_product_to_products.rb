class AddSimpleConfiguratorProductToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :simple_configurator_product, :boolean, default: false
  end
end
