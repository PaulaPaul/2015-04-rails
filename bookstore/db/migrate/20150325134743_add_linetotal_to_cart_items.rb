class AddLinetotalToCartItems < ActiveRecord::Migration
  def change
    add_column :cart_items, :linetotal, :float
  end
end
