class CreatePrints < ActiveRecord::Migration[5.0]
  def change
    create_table :prints do |t|
      t.jsonb :metadata
      t.string :type
      t.string :name
      t.integer :blank_id

      t.timestamps
    end
  end
end
