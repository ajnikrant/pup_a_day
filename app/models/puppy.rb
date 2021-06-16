class Puppy < ApplicationRecord
    has_many :advertisements
    has_many :rentals
    belongs_to :shelter
    belongs_to :person, optional: true
end
