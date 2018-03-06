class AddToAutoDestroysFields < ActiveRecord::Migration[5.1]
  def change
    add_column :auto_destroys, :user_id, :integer
    add_column :auto_destroys, :service_id, :integer
  end
end
