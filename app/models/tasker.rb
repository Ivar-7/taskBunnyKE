class Tasker < ApplicationRecord
  belongs_to :user

  # Relationships
  has_and_belongs_to_many :services
  has_many :bookings
  has_many :tasker_comments
end
