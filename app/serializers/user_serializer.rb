class UserSerializer < ActiveModel::Serializer
  attributes :name, :username, :id
  has_many :comments 
end
