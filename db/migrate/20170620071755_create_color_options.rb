class CreateColorOptions < ActiveRecord::Migration[5.0]
  def change
    create_table :color_options do |t|
      t.belongs_to :product, foreign_key: true
      t.belongs_to :color, foreign_key: true

      t.timestamps
    end
  end
end
