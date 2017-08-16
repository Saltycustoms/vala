class AddMetadataToSide < ActiveRecord::Migration[5.0]
  def change
    add_column :sides, :metadata, :json
  end
end
