json.extract! booking, :id, :user_id, :service_id, :tasker_id, :description, :schedule, :location, :accepted, :created_at, :updated_at
json.url booking_url(booking, format: :json)
