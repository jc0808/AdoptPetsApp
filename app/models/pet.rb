class Pet < ApplicationRecord
    belongs_to :shelter
    belongs_to :adopter
end
