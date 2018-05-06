class AddSizeAndAgeAndScreenshotToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :size, :string
    add_column :posts, :age, :string
    add_column :posts, :screenshot, :string
    rename_column :posts, :modelname, :category
  end
end
