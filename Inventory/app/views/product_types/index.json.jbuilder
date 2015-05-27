json.array!(@product_types) do |product_type|
  json.extract! product_type, :id, :name, :description
  json.url product_type_url(product_type, format: :json)
end
