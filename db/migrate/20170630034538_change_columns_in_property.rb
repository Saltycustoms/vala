class ChangeColumnsInProperty < ActiveRecord::Migration[5.0]
  def up
    remove_column :properties, :element_id
    remove_column :properties, :side_id
    add_column :properties, :method, :integer
    add_column :properties, :metadata, :jsonb
    add_column :properties, :blank_id, :integer
  end

  def down
    add_column :properties, :element_id, :integer
    add_column :properties, :side_id, :integer
    remove_column :properties, :metadata
    remove_column :properties, :blank_id
    remove_column :properties, :method
  end

end
