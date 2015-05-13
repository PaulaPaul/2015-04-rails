class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :blog_text
      t.integer :bloguser_id

      t.timestamps null: false
    end
  end
end
