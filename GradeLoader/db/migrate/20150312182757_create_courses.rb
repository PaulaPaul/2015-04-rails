class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.integer :credits
      t.string :term
      t.string :instructor

      t.timestamps null: false
    end
  end
end
