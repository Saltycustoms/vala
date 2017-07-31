class AddPantoneCodeToColors < ActiveRecord::Migration[5.0]
  def change
    add_column :colors, :pantone_code, :string
  end
end
