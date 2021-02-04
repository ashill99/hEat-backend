class LocationSerializer < ActiveModel::Serializer
  attributes :name, :address, :restOrBar, :restType, :rating, :longitude, :latitude, :id
  has_many :comments 
end
