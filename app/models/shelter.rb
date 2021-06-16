class Shelter < ApplicationRecord
    has_many :advertisements
    has_many :puppies
end
