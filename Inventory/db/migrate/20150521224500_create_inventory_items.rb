class CreateInventoryItems < ActiveRecord::Migration
  def change
    create_table :inventory_items do |t|
      t.string :name
      t.integer :qty
      t.string :photo
      t.integer :product_type_id

      t.timestamps null: false
    end
  end
end
