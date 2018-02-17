class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
      t.string :name
      t.string :city
      t.string :address
      t.boolean :diler

      t.timestamps
    end
  end
end
