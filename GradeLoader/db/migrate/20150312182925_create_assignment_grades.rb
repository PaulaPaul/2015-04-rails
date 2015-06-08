class CreateAssignmentGrades < ActiveRecord::Migration
  def change
    create_table :assignment_grades do |t|
      t.string :assignment
      t.string :letter_grade
      t.float :percent_grade
      t.references :student, index: true
      t.references :course, index: true

      t.timestamps null: false
    end
    add_foreign_key :assignment_grades, :students
    add_foreign_key :assignment_grades, :courses
  end
end
