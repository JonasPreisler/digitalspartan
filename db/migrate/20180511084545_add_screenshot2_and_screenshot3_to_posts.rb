class AddScreenshot2AndScreenshot3ToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :screenshot2, :string
    add_column :posts, :screenshot3, :string
  end
end
