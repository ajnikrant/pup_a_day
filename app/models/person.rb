class Person < ApplicationRecord
    has_many :rentals
    has_many :puppies

    validates :name, :username, :email, :age, presence: true
    validates :username, :email, uniqueness: true

    has_secure_password

#    def has_any_rental
#         if self.rentals.count > 0
#             self.rentals.map {|rental| {rental.puppy.name}.join (", ")
#         else
#             "Looks like "
#         end
#    end
end
