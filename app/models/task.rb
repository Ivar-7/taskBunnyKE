class Task < ApplicationRecord
  belongs_to :tasker
  belongs_to :service
end
