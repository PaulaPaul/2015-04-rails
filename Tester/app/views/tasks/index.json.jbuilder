json.array!(@tasks) do |task|
  json.extract! task, :id, :title, :size, :completed, :project_id
  json.url task_url(task, format: :json)
end
