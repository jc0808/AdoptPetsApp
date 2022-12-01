class Adopter < ApplicationRecord
    has_many :pets
    has_many :shelters, through: :pets
    has_one :credential, dependent: :destroy


    def createCredentials(params)
        new_credential = {"username" => params[:username], "password" => params[:password], "adopter_id" => self.id}
        Credential.create!(new_credential)
    end

    # def adopt_a_pet(id)
    #     pet = Pet.find_by(id: id)
    #     pet[:adopter_id] = self.id
    #     pet[:adopted] = true
    #     pet.save
    #     render json: pet, status: :updated
    # end
end
