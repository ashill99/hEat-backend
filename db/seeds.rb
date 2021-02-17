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
Comment.destroy_all 
User.destroy_all
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
    address: "346 Himrod St, Brooklyn, NY 11237",
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
    address: "1211 Myrtle Ave, Brooklyn, NY 11221",
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
    address: "266 Irving Avenue, Brooklyn, NY 11237",
    restOrBar: "Bar",
    restType: "",
    longitude: -73.91555735946153,
    latitude: 40.699805212479916,
    website: "https://www.dromedarytiki.com/",
    imgUrl: "https://infatuation.imgix.net/media/images/reviews/happyfun-hideaway/banners/1521753430.75.jpg?auto=format&fit=max&h=1200&w=3200",
    hours: "3pm - 10pm Tues - Sun",
    menu: "https://app.trytabled.com/openmenu/?id=D8bZJlWhcbTWtHeymUDAstOWeBE2"
)

location6 = Location.create(
    name: "Black Swan",
    address: "1048 Bedford Ave, Brooklyn, NY 11205",
    restOrBar: "Bar",
    restType: "",
    longitude: -73.9553,
    latitude: 40.6891,
    website: "https://www.facebook.com/BlackSwanBK/",
    imgUrl: "https://www.totalhappyhour.com/preview/500-450/content/files/mod.happyhour/fde0338154c34788aa834491f9ff737a.jpg",
    hours: "4pm-12am Mon-Fri, 10am-12am Sat-Sun",
    menu: "https://menupages.com/the-black-swan/1048-bedford-ave-brooklyn",
)

location7 = Location.create(
    name: "Do Or Dive",
    address: "1108 Bedford Ave, Brooklyn, NY 11216",
    restOrBar: "Bar",
    restType: "",
    longitude: -73.9548362,
    latitude: 40.6867587,
    website: "https://www.doordivebedstuy.com/",
    imgUrl: "https://cdn.vox-cdn.com/thumbor/3Y6TPgdx_fF93yE0rGqUll9XUQU=/0x0:960x720/1200x800/filters:focal(0x0:960x720)/cdn.vox-cdn.com/uploads/chorus_image/image/50296773/10255518_639105632822589_7001122716585835119_n.0.0.jpg",
    hours: "8am-10pm daily",
    menu: "https://www.doordivebedstuy.com/cocktails-and-cold-beer/"
)

location8 = Location.create(
    name: "Turtles All The Way Down",
    address: "236 Malcolm X Blvd, Brooklyn, NY 11221",
    restOrBar: "Bar",
    restType: "",
    longitude: -73.9297,
    latitude: 40.6851,
    website: "https://www.instagram.com/turtlesallthewaydownbk/?hl=en",
    imgUrl: "",
    hours: "10am-10pm daily", 
    menu: "https://qrco.de/bbmgdO"
)

location9 = Location.create(
    name: "Meckelburg's", 
    address: "293 Grand Ave, Brooklyn, NY 11238",
    restOrBar: "Restaurant", 
    restType: "American",
    longitude: -73.9623,
    latitude: 40.6875,
    website: "https://www.mekelburgs.com/",
    imgUrl: "https://scontent-lga3-2.xx.fbcdn.net/v/t1.0-9/35114532_1626738797454229_4213158494112579584_n.jpg?_nc_cat=108&ccb=3&_nc_sid=9267fe&_nc_ohc=eG0NnRAw9t8AX91Bp1E&_nc_ht=scontent-lga3-2.xx&oh=59a78b49e495ce64185fd8437c671c80&oe=6051CCA8",
    hours: "8am-11pm daily",
    menu: "https://www.mekelburgs.com/clintonhill-menu"
)

location10 = Location.create(
    name: "Bunker",
    address: "99 Scott Ave, Brooklyn, NY 11237",
    restOrBar: "Restaurant",
    restType: "Vietnamese",
    longitude: -73.923061,
    latitude: 40.710651,
    website: "https://www.bunkernyc.com/",
    imgUrl: "https://scontent-lga3-2.xx.fbcdn.net/v/t1.0-9/118761929_3110239625740579_5270963228964189233_o.jpg?_nc_cat=111&ccb=3&_nc_sid=a26aad&_nc_ohc=mXO1CoxFf7oAX9by4uV&_nc_ht=scontent-lga3-2.xx&oh=feca8a4ac7409308039396a4137776f2&oe=60515952",
    hours: "5pm-9pm Mon-Fri, 12pm - 10pm Weekends",
    menu: "https://www.bunkernyc.com/bushwick-menus"
)

location11 = Location.create(
    name: "Yours Sincerely",
    address: "41 Wilson Avenue Brooklyn, NY 11237", 
    restOrBar: "Bar",
    restType: "",
    longitude: -73.9292,
    latitude: 40.7029, 
    website: "http://www.yourssincerely.co/",
    imgUrl: "https://images.squarespace-cdn.com/content/v1/567300d240667a634d1732ea/1452486961860-MSY7IOO3DWAZCN68CV2K/ke17ZwdGBToddI8pDm48kHKLcAl3-QKNxJlICEDeZMp7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0lqfkVpRp1g_2L-WsTQRP4LU-9_DW7hszJbrvyEfLNyxlPqCq5rbpQvqrhFjGibsPQ/cocktails.jpg?format=1500w", 
    hours: "5pm-12am Daily",
    menu: "http://www.yourssincerely.co/#menu"
)

location12 = Location.create(
    name: "Hunky Dory",
    address: "747 Franklin Ave, New York, NY 11216",
    restOrBar: "Restaurant",
    restType: "American",
    longitude: -73.9569,
    latitude: 40.6731,
    website: "https://www.hunkydorybk.com/",
    imgUrl: "https://media-cdn.tripadvisor.com/media/photo-s/13/30/3c/8c/hunky-favourites.jpg",
    hours: "12pm-12am daily",
    menu: "https://www.zmenu.com/hunky-dory-brooklyn-online-menu/"

)

location13 = Location.create(
    name: "Ursula", 
    address: "724 Sterling Pl., Brooklyn, NY 11216",
    restOrBar: "Restaurant",
    restType: "New Mexican",
    longitude: -73.9548,
    latitude: 40.6727,
    website: "https://www.ursulabk.com/",
    imgUrl: "https://scontent-lga3-2.xx.fbcdn.net/v/t1.0-9/119059875_1167586770289591_4055657315878167958_n.jpg?_nc_cat=105&ccb=3&_nc_sid=e3f864&_nc_ohc=I8jWLHdYmQsAX-V_Jiy&_nc_ht=scontent-lga3-2.xx&oh=ac872f8559806d666f35b4e48a973615&oe=6052B864",
    hours: "8am-6pm daily",
    menu: "https://www.trycaviar.com/store/ursula-brooklyn-1205814/en-US"
)

location14 = Location.create(
    name: "Cafe Rue Dix",
    address: "1451 Bedford Ave, Brooklyn, NY 11216",
    restOrBar: "Restaurant",
    restType: "French / West African",
    longitude: -73.9537812,
    latitude: 40.6735044,
    website: "https://www.caferuedix.com/",
    imgUrl: "https://nyarw.com/wp-content/uploads/2017/08/CAFERUEDIXFOOD.jpg",
    hours: "12pm-9pm daily",
    menu: "https://www.caferuedix.com/menu"
)

location15 = Location.create(
    name: "Grand Army",
    address: "336 State St, Brooklyn, NY 11217",
    restOrBar: "Restaurant", 
    restType: "Seafood", 
    longitude: -73.9731, 
    latitude: 40.7647,
    website: "https://www.grandarmybar.com/",
    imgUrl: "https://s.wsj.net/public/resources/images/BN-JB432_NYHAPP_P_20150623171906.jpg",
    hours: "2pm to 10pm Thurs-Sun",
    menu: "https://www.grandarmybar.com/#menu"
)

user1 = User.create(
    username: "adam",
    email: "adam@heat.com"
)

user2 = User.create(
    username: "Nicole",
    email: "nicole@gmail.com"
)

user3 = User.create(
    username: "Ultimate-Ian-Hollander",
    email: "ian@flatiron.com"
)

comment1 = Comment.create(
    content: "So Warm",
    user_id: 1, 
    location_id: 2,
    likes: 0,
    rating: 3,
    username: "Nicole"
)

comment2 = Comment.create(
    content: "Love it!",
    user_id: 1,
    location_id: 2,
    likes: 0,
    rating: 4,
    username: "adam"
)

comment3 = Comment.create(
    content: "Great Pizza",
    user_id: 1,
    location_id: 2,
    likes: 0,
    rating: 2,
    username: "Ultimate-Ian-Hollander"
)

