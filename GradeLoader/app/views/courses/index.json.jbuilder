json.array!(@courses) do |course|
  json.extract! course, :id, :name, :credits, :term, :instructor
  json.url course_url(course, format: :json)
end
