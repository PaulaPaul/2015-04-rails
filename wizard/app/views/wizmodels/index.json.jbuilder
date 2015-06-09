json.array!(@wizmodels) do |wizmodel|
  json.extract! wizmodel, :id, :project_name, :description, :cheap_material, :expensive_material, :cheap_color, :expensive_color, :current_step
  json.url wizmodel_url(wizmodel, format: :json)
end
