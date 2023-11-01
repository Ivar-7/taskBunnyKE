class Tasker < ApplicationRecord
  belongs_to :user

  # Relationships
  has_many :tasks
  has_many :services, through: :tasks
  has_many :bookings
  has_many :tasker_comments
end
