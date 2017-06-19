class CreateBlanks < ActiveRecord::Migration[5.0]
  def change
    create_table :blanks do |t|
      t.string :name
      t.string :brand

      t.timestamps
    end
  end
end
