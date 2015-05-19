json.array!(@courses) do |course|
  json.extract! course, :id, :number, :title, :credits, :department_id
  json.url course_url(course, format: :json)
end
