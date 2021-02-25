class User < ApplicationRecord
    has_secure_password
    validates :username, uniqueness: true
    has_many :comments, dependent: :destroy 
    has_many :favourites, dependent: :destroy
end
