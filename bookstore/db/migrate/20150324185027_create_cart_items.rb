class CreateCartItems < ActiveRecord::Migration
  def change
    create_table :cart_items do |t|
      t.integer :quantity
      t.references :student, index: true
      t.references :book, index: true

      t.timestamps null: false
    end
    add_foreign_key :cart_items, :students
    add_foreign_key :cart_items, :books
  end
end
