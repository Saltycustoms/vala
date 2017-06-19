class CreateSides < ActiveRecord::Migration[5.0]
  def change
    create_table :sides do |t|
      t.string :name
      t.text :attachment_data
      t.belongs_to :blank, foreign_key: true

      t.timestamps
    end
  end
end
