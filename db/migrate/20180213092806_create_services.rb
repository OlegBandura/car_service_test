class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
      t.string :name_service
      t.text :address

      t.timestamps
    end
  end
end
