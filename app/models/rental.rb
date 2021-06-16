class Rental < ApplicationRecord
    belongs_to :puppy
    belongs_to :person

    validates :puppy_id, :person_id, :time, presence: true
    # validates :time, numericality: {greater_than_or_equal_to:1, less_than_or_equal_to: 24}

    def new_cost
        rand(20..50)
    end

end
