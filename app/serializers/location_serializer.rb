class LocationSerializer < ActiveModel::Serializer
  attributes :name, :address, :restOrBar, :restType, :longitude, :latitude, :id, :imgUrl, :menu, :website, :hours, :comments
  has_many :comments, :favourites 
end
