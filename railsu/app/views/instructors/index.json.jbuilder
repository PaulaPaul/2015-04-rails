json.array!(@instructors) do |instructor|
  json.extract! instructor, :id, :last_name, :first_name, :hire_date
  json.url instructor_url(instructor, format: :json)
end
