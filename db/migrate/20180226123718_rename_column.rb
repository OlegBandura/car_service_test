class RenameColumn < ActiveRecord::Migration[5.1]
  def change
    rename_column :cars, :id_brand, :brand_id
  end
end
