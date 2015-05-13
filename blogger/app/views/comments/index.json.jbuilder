json.array!(@comments) do |comment|
  json.extract! comment, :id, :feedback, :blog_id, :bloguser_id
  json.url comment_url(comment, format: :json)
end
