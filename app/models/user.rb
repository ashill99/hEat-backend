class User < ApplicationRecord
    has_many :comments, dependent: :destroy 
    has_many :favourites, dependent: :destroy
end
