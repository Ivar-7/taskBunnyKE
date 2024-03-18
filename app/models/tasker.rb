class Tasker < ApplicationRecord
  belongs_to :user

  # Relationships
  has_and_belongs_to_many :services
  has_many :bookings
  has_many :tasker_comments

  # Active storage image
  has_one_attached :image

  # Validations
  validates :phone_number, length: { is: 9 }, numericality: { only_integer: true }
end
