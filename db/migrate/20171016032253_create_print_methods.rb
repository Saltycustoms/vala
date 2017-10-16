class CreatePrintMethods < ActiveRecord::Migration[5.0]
  def change
    create_table :print_methods do |t|
      t.string :name

      t.timestamps
    end
  end
end
