json.array!(@tasks) do |task|
  json.extract! task, :id, :name, :owner, :due
  json.url task_url(task, format: :json)
end
