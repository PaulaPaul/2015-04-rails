json.array!(@people) do |person|
  json.extract! person, :id, :username, :provider, :uid
  json.url person_url(person, format: :json)
end
