class Location < ApplicationRecord
    has_many :comments, dependent: :destroy 
    has_many :favourites, dependent: :destroy

end
