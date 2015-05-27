json.array!(@marbles) do |marble|
  json.extract! marble, :id, :name, :color, :person_id
  json.url marble_url(marble, format: :json)
end
