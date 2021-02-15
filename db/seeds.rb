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
    address: "127 Havermayer, Brooklyn",
    restOrBar: "Restaurant",
    restType: "Pizza",
    longitude: -73.9568,
    latitude: 40.7126,
    website: "https://leo-nyc.com/",
    imgUrl: "https://images.squarespace-cdn.com/content/v1/5d82d7c884358e0d7028cce1/1578940333054-LNRJTKEPCPYZWWJ0X0DW/ke17ZwdGBToddI8pDm48kLkXF2pIyv_F2eUT9F60jBl7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0iyqMbMesKd95J-X4EagrgU9L3Sa3U8cogeb0tjXbfawd0urKshkc5MgdBeJmALQKw/Leo_12.5.19-24.jpg",
    hours: "8am - 10pm Daily",
    menu: "https://leo-nyc.com/menu"
)
location2 = Location.create(
    name: "Ops",
    address: "346 Himrod, Brooklyn",
    restOrBar: "Restaurant",
    restType: "Pizza",
    longitude: -73.9172,
    latitude: 40.7026,
    website: "http://www.opsbk.com/",
    imgUrl: "https://images.squarespace-cdn.com/content/v1/57d16f3bff7c5003ba856b59/1512847331748-MRTZXVN780ATY0IOCXG8/ke17ZwdGBToddI8pDm48kPyxK6AB3zgGizbLyl3cQLF7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0hHMyhIh2kKzuOL3ydJCryA1F0gmNLmEt4Nikyd91URavr8Aoi-yShiL3L-0iJr14g/12870008.JPG?format=2500w",
    hours: "5pm - 10pm Daily",
    menu: "http://www.opsbk.com/food-1"
)

location3 = Location.create(
    name: "Santa Panza",
    address: "1079 Broadway, Brooklyn, NY 11221",
    restOrBar: "Restaurant",
    restType: "Pizza",
    longitude: -73.9305111,
    latitude: 40.6945614,
    website: "https://www.santapanza.com",
    imgUrl: "https://infatuation.imgix.net/media/images/reviews/santa-panza/KatePrevite_SantaPanza_ProsciuttoFunghiPizza_1.jpg?auto=format&w=256",
    hours: "5pm - 10pm Daily",
    menu: "https://www.santapanza.com/menus/"

)

location4 = Location.create(
    name: "Happy Fun Hideaway",
    address: "1211 Myrtle Ave, Brooklyn",
    restOrBar: "Bar",
    restType: "",
    longitude: -73.9318684,
    latitude: 40.6975224,
    website: "https://www.instagram.com/happyfunhideaway/?hl=en",
    imgUrl: "https://infatuation.imgix.net/media/images/reviews/happyfun-hideaway/banners/1521753430.75.jpg?auto=format&fit=max&h=1200&w=3200",
    hours: "4pm - 4am Daily",
    menu: ""
)

location5 = Location.create(
    name: "Dromedary Urban Tiki Bar",
    address: "266 Irving Avenue, Brooklyn",
    restOrBar: "Bar",
    restType: "",
    longitude: -73.91555735946153,
    latitude: 40.699805212479916,
    website: "https://www.dromedarytiki.com/",
    imgUrl: "https://infatuation.imgix.net/media/images/reviews/happyfun-hideaway/banners/1521753430.75.jpg?auto=format&fit=max&h=1200&w=3200",
    hours: "3pm - 10pm Tues - Sun",
    menu: "https://app.trytabled.com/openmenu/?id=D8bZJlWhcbTWtHeymUDAstOWeBE2"
)

user1 = User.create(
    username: "adam",
    email: "adam@heat.com"
)

comment1 = Comment.create(
    content: "So Warm",
    user_id: 1, 
    location_id: 2,
    likes: 0,
    rating: 3
)

comment2 = Comment.create(
    content: "Love it!",
    user_id: 1,
    location_id: 2,
    likes: 0,
    rating: 4
)

comment3 = Comment.create(
    content: "Great Pizza",
    user_id: 1,
    location_id: 2,
    likes: 0,
    rating: 2
)