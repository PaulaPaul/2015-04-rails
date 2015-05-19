class CreateEnrollments < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
      t.string :grade
      t.integer :student_id
      t.integer :course_id

      t.timestamps null: false
    end
  end
end
