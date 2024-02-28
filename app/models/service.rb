class Service < ApplicationRecord
    # Relationships
    has_and_belongs_to_many :taskers
    has_many :bookings
end
