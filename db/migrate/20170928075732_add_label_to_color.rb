class AddLabelToColor < ActiveRecord::Migration[5.0]
  def change
    add_column :colors, :label, :string
  end
end
