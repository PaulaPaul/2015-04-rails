class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :feedback
      t.integer :blog_id
      t.integer :bloguser_id

      t.timestamps null: false
    end
  end
end
