# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# t.string :name
# t.string :address
# t.string :type
# t.string :restType
# t.integer :rating

puts "Deleting old restaurants"
Location.destroy_all 

puts "Seeding locations"

location1 = Location.create(
    name: "Leo",
    address: "127 Havermayer",
    restOrBar: "Restaurant",
    restType: "Pizza",
    rating: 0,
    longitude: -73.9568,
    latitude: 40.7126
)
location2 = Location.create(
    name: "Ops",
    address: "346 Himrod",
    restOrBar: "Restaurant",
    restType: "Pizza",
    rating: 0,
    longitude: -73.9172,
    latitude: 40.7026
)

location3 = Location.create(
    name: "Scarr's",
    address: "22 Orchard",
    restOrBar: "Restaurant",
    restType: "Pizza",
    rating: 0,
    longitude: -73.991,
    latitude: 40.7154
)

user1 = User.create(
    name: "Adam",
    username: "adam"
)

comment1 = Comment.create(
    content: "Hi I am a test comment",
    user_id: 1, 
    location_id: 1
)