json.array!(@students) do |student|
  json.extract! student, :id, :last_name, :first_name, :enrollment_date
  json.url student_url(student, format: :json)
end
