class Person < ApplicationRecord
    has_many :rentals
    has_many :puppies

    validates :name, :username, :email, :age, presence: true
    validates :username, :email, uniqueness: true

    has_secure_password
end
