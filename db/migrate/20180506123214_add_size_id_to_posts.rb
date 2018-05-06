class AddSizeIdToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :size_id, :integer
  end
end
