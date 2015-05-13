json.array!(@blogusers) do |bloguser|
  json.extract! bloguser, :id, :name
  json.url bloguser_url(bloguser, format: :json)
end
