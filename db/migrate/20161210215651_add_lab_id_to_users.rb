class AddLabIdToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :lab_id, :integer
  end
end
