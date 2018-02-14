class Cars < ActiveRecord::Migration[5.1]
  def change
    create_table :cars do |t|
      t.string :marka

      t.timestamps
    end
  end
end
