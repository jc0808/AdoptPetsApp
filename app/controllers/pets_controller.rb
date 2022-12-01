class PetsController < ApplicationController

    wrap_parameters format: []

    def update
        pet = Pet.find(params[:id])
        pet.update!(pet_params)
        render json: pet, status: :accepted
    end

    def back
        pet = Pet.find(params[:id])
        pet[:adopter_id] = params[:adopter_id]
        pet[:adopted] = params[:adopted]
        pet.save(validate: false)
    end


    private

    def pet_params
        params.permit(:name, :sex, :breed, :pet_type, :age, :adopter_id, :shelter_id, :adopted, :image)
    end


end
