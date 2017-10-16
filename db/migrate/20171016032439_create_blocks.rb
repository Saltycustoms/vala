class CreateBlocks < ActiveRecord::Migration[5.0]
  def change
    create_table :blocks do |t|
      t.string :name
      t.belongs_to :print_method, foreign_key: true

      t.timestamps
    end
  end
end
