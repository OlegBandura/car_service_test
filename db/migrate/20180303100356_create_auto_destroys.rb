class CreateAutoDestroys < ActiveRecord::Migration[5.1]
  def change
    create_table :auto_destroys do |t|
      t.integer :caregory_id
      t.string :car_year
      t.text :breakdown
      t.references :car, index: true
      t.timestamps
    end
  end
end
