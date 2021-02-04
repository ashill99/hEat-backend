class LocationSerializer < ActiveModel::Serializer
  attributes :name, :address, :restOrBar, :restType, :rating, :id
  has_many :comments 
end
