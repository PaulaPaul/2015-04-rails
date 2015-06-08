json.array!(@assignment_grades) do |assignment_grade|
  json.extract! assignment_grade, :id, :assignment, :letter_grade, :percent_grade, :student_id, :course_id
  json.url assignment_grade_url(assignment_grade, format: :json)
end
