class UserSerializer < ActiveModel::Serializer
  attributes :username, :id
  has_many :comments 
end
