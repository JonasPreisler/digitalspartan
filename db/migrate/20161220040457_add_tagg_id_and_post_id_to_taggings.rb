class AddTaggIdAndPostIdToTaggings < ActiveRecord::Migration[5.0]
  def change
    add_column :taggings, :tag_id, :integer
    add_column :taggings, :post_id, :integer
  end
end
