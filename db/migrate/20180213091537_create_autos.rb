class CreateAutos < ActiveRecord::Migration[5.1]
  def change
    change_table :autos do |t|
      t.integer :id_marka
      t.string :model
      t.string :autoYear

      t.timestamps
    end
  end
end
