class Credential < ApplicationRecord
    belongs_to :adopter

    has_secure_password
end
