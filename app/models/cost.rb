class Cost < ApplicationRecord
    def self.rental_cost
        rand(20..50)
    end
  
end