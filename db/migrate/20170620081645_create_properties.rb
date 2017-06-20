class CreateProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :properties do |t|
      t.integer :prop_type
      t.string :name
      t.string :element_id
      t.belongs_to :side, foreign_key: true

      t.timestamps
    end
  end
end
