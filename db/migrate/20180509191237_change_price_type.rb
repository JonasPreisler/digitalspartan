class ChangePriceType < ActiveRecord::Migration[5.0]
  def change
	  change_column :posts, :price, :decimal
  end
end
