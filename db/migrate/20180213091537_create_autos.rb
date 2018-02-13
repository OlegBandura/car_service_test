class CreateAutos < ActiveRecord::Migration[5.1]
  def change
    create_table :autos do |t|
      t.string :marka
      t.string :model
      t.string :autoYear

      t.timestamps
    end
  end
end
