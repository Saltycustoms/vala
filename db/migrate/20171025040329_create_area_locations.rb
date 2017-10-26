class CreateAreaLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :area_locations do |t|
      t.string :area
      t.string :location
      t.integer :delivery_method_id

      t.timestamps
    end
  end
end
