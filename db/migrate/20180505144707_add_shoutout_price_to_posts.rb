class AddShoutoutPriceToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :shoutout_price, :integer
  end
end
