json.extract! booking, :id, :service_id, :tasker_id, :task_id, :schedule, :location, :accepted, :created_at, :updated_at
json.url booking_url(booking, format: :json)
