class AddScreenshot2FileNameToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :screenshot2_file_name, :string
    add_column :posts, :screenshot3_file_name, :string
  end
end
