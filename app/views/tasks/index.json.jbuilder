json.array!(@tasks) do |task|
  json.extract! task, :id, :task, :completed, :date, :description
  json.url task_url(task, format: :json)
end
