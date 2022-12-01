class Shelter < ApplicationRecord
    has_many :pets
    has_many :adopters, through: :pets

end
