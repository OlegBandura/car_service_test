class CreateCars < ActiveRecord::Migration[5.1]
  def change
    create_table :cars do |t|
      t.bigint :id_brand
      t.string :model
      t.references :brand, index: true

      t.timestamps
    end
  end
end
