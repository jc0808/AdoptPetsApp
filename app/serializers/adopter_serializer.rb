class AdopterSerializer < ActiveModel::Serializer
  attributes :id, :firstName, :lastName

  has_many :pets

  has_one :credential, serializer: CredentialSerializer
end
