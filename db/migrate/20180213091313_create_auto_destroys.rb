class CreateAutoDestroys < ActiveRecord::Migration[5.1]
  def change
    create_table :autoDestroys do |t|
      t.string :marka
      t.string :model
      t.string :carYear
      t.text :breakdown

      t.timestamps
    end
  end
end
