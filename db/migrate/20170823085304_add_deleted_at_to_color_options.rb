class AddDeletedAtToColorOptions < ActiveRecord::Migration[5.0]
  def change
    add_column :color_options, :deleted_at, :datetime
    add_index :color_options, :deleted_at
  end
end
