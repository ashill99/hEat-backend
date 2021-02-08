class CommentSerializer < ActiveModel::Serializer
  attributes :content, :id, :user_id, :location_id
end
