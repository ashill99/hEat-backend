class CommentSerializer < ActiveModel::Serializer
  attributes :content, :id, :rating, :likes, :username, :user_id, :location_id
end
