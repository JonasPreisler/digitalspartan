class AddCollectionIdToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :collection_id, :integer
  end
end
