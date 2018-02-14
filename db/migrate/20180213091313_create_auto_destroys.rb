class CreateAutoDestroys < ActiveRecord::Migration[5.1]
  def change
    create_table :autoDestroys do |t|
      t.inteder :id_marka
      t.integer :id_model
      t.string :carYear
      t.text :breakdown

      t.timestamps
    end
  end
end
