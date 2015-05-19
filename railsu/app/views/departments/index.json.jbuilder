json.array!(@departments) do |department|
  json.extract! department, :id, :name, :budget, :start_date, :instructor_id
  json.url department_url(department, format: :json)
end
