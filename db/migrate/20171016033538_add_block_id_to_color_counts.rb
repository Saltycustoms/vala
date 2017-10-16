class AddBlockIdToColorCounts < ActiveRecord::Migration[5.0]
  def change
    add_column :color_counts, :block_id, :integer
  end
end
