class Booking < ApplicationRecord
  belongs_to :service
  belongs_to :tasker
  belongs_to :user
end
