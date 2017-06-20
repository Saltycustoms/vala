class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.belongs_to :blank, foreign_key: true

      t.timestamps
    end
  end
end
