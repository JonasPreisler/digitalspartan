class AddScreenshotFileNameToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :screenshot_file_name, :string
  end
end
