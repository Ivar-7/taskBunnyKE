class Service < ApplicationRecord
    # Relationships
    has_many :taskers
    has_many :tasks, through: :taskers
end
