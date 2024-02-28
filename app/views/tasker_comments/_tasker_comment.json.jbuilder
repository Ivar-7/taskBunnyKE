json.extract! tasker_comment, :id, :user_id, :tasker_id, :comment, :rating, :created_at, :updated_at
json.url tasker_comment_url(tasker_comment, format: :json)
