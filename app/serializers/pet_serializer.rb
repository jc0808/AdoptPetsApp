class PetSerializer < ActiveModel::Serializer
  attributes :id, :name, :sex, :breed, :pet_type, :age, :adopter_id, :shelter_id, :adopted, :image
end
