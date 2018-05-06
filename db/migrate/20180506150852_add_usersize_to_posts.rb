class AddUsersizeToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :usersize, :integer
  end
end
