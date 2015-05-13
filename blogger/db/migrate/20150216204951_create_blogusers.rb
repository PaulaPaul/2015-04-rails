class CreateBlogusers < ActiveRecord::Migration
  def change
    create_table :blogusers do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
