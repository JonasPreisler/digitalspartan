class AddModelnameToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :modelname, :string
  end
end
