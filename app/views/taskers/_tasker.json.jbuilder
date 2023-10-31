json.extract! tasker, :id, :user_id, :name, :location, :profile_picture, :description, :phone_number, :rating, :created_at, :updated_at
json.url tasker_url(tasker, format: :json)
