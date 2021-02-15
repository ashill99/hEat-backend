class CommentSerializer < ActiveModel::Serializer
  attributes :content, :id, :rating, :likes, :user_id, :location_id
end
