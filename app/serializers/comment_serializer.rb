class CommentSerializer < ActiveModel::Serializer
  attributes :content, :id, :likes, :user_id, :location_id
end
