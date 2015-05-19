class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.integer :number
      t.string :title
      t.integer :credits
      t.integer :department_id

      t.timestamps null: false
    end
  end
end
