class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.string :name
      t.float :budget
      t.date :start_date
      t.integer :instructor_id

      t.timestamps null: false
    end
  end
end
