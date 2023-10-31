class TaskerComment < ApplicationRecord
  belongs_to :user
  belongs_to :tasker
end
