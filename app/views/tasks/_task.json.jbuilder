json.extract! task, :id, :tasker_id, :service_id, :created_at, :updated_at
json.url task_url(task, format: :json)
