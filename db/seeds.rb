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
    menu: "https://whereyoueat.com/r_menus_images/menus-17470/0001.jpg"
)

location5 = Location.create(
    name: "Dromedary Urban Tiki Bar",
    address: "266 Irving Avenue, Brooklyn, NY 11237",
    restOrBar: "Bar",
    restType: "",
    longitude: -73.91555735946153,
    latitude: 40.699805212479916,
    website: "https://www.dromedarytiki.com/",
    imgUrl: "https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/148369155_5424471627577793_2203545886333736239_o.jpg?_nc_cat=103&ccb=3&_nc_sid=a26aad&_nc_ohc=l5cIS-JeoR8AX-WdkPb&_nc_ht=scontent-lga3-1.xx&oh=18214442a011f8e9007ab7eef76986ce&oe=6055F08D",
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

location16 = Location.create(
    name: "Miss Ada",
    address: "184 Dekalb Ave, New York, NY 11205",
    restOrBar: "Restaurant",
    restType: "Mediterranean/Middle Eastern",
    longitude: -73.9724,
    latitude: 40.6894,
    website: "https://www.missadanyc.com/",
    imgUrl: "https://images.squarespace-cdn.com/content/v1/58ed384edb29d654c6cc8032/1494880544876-KZE07ETUPL6XDI8OCR6L/ke17ZwdGBToddI8pDm48kE8F1gtKa43xUWd7CzTvFVF7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0plef_PmwB6-3GP4qDbCUv-J5ex0CTWqsqsQIxlgM0BuWezpf6sbifK1g4Z_VNRRAw/Miss+Ada+Shakshuka+by+Michael+Tulipan.JPG?format=2500w",
    hours: "5pm-10pm Mon-Fri, 11am-10pm Weekends",
    menu: "https://www.missadanyc.com/"
)

location17 = Location.create(
    name: "Lavender Lake", 
    address: "383 Carroll St., Brooklyn, NY 11231",
    restOrBar: "Bar", 
    restType: "",
    longitude: -73.9898,
    latitude: 40.6786,
    website: "vhttp://www.lavenderlake.com/",
    imgUrl: "https://images.squarespace-cdn.com/content/v1/5313623ee4b0e36de2978d67/1484869828223-3SRF3TS39CDFCZFWP4ZX/ke17ZwdGBToddI8pDm48kG4sWXxm5MLGzYXxhI3Emb8UqsxRUqqbr1mOJYKfIPR7LoDQ9mXPOjoJoqy81S2I8N_N4V1vUb5AoIIIbLZhVYxCRW4BPu10St3TBAUQYVKcDFrDsapgIo0q8jUcW8rNPjhtZThjXNYUQzTwr7Xuxi1NR1RJqyZivqtN160e7oMj/GOWANUSCANAL.jpeg?format=1500w",
    hours: "4pm-12pm Mon-Fri, 12pm-10pm Weekends",
    menu: "https://www.tripadvisor.com/LocationPhotoDirectLink-g60827-d6558666-i232315249-Lavender_Lake-Brooklyn_New_York.html"

)

location18 = Location.create(
    name: "Pig Beach", 
    address: "480 Union Street, Brooklyn, NY 11231",
    restOrBar: "Restaurant",
    restType: "BBQ",
    longitude: -73.9889,
    latitude: 40.6796,
    website: "https://www.pigbeachnyc.com/",
    imgUrl: "https://media-cdn.tripadvisor.com/media/photo-s/16/99/0d/67/patio-and-bar-area.jpg",
    hours: "4pm-8pm Wed-Fri, 12pm-8pm Sat-Sun",
    menu: "https://www.pigbeachnyc.com/menu/backyard-food-menu/"
)

location19 = Location.create(
    name: "Public Records",
    address: "233 Butler St., New York, NY 11217",
    restOrBar: "Restaurant",
    restType: "Vegan",
    longitude: -73.9864, 
    latitude: 40.6822,
    website: "https://publicrecords.nyc/information",
    imgUrl: "https://www.insidehook.com/wp-content/uploads/2020/02/hero1-8.jpg?fit=1200%2C800",
    hours: "12pm-10pm Thurs-Sun",
    menu: "https://publicrecords.nyc/menu"
)

location20 = Location.create(
    name: "Black Rabbit",
    address: "91 Greenpoint Ave, Brooklyn, NY 11222",
    restOrBar: "Bar",
    restType: "",
    longitude: -73.9566,
    latitude: 40.7301,
    website: "http://www.blackrabbitbar.com", 
    imgUrl: "https://www.totalhappyhour.com/preview/500-450/content/files/mod.happyhour/423a4c287a0848eb90b52b24fb4128b4.jpg",
    hours: "2pm-2am daily",
    menu: "http://www.blackrabbitbar.com/#menu"

)

location21 = Location.create(
    name: "Tørst",
    address: "615 Manhattan Ave, Brooklyn, NY 11222",
    restOrBar: "Bar",
    restType: "",
    longitude: -73.9508,
    latitude: 40.7234,
    website: "http://www.torstnyc.com/",
    imgUrl: "https://images.squarespace-cdn.com/content/v1/59a0cb856b8f5be647ec26a7/1503763269007-JXCG8N9QN6H0WNM1WUGN/ke17ZwdGBToddI8pDm48kFeAtvP9WODk8WMfXylcMsR7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0tb-hnCqoepq4X8c1traqO-Bt540rNJkO_0QTS62vbxCE6Rx3pixHRJ79KQgGrDEeQ/Torst-02.02.17-18.jpg?format=2500w",
    hours: "12pm-11pm daily",
    menu: "http://www.torstnyc.com/"
)

location22 = Location.create(
    name: "Olmsted",
    address: "659 Vanderbilt Ave, Brooklyn, NY 11238",
    restOrBar: "Restaurant",
    restType: "American",
    longitude: -73.9688,
    latitude: 40.6772,
    website: "http://www.olmstednyc.com/",
    imgUrl: "https://infatuation.imgix.net/media/images/reviews/olmsted/Olmsted%20Garden.jpg?auto=format&h=890&w=1336",
    hours: "12pm-10pm Wed-Sun",
    menu: "http://www.olmstednyc.com/food-and-drink"
)

location23 = Location.create(
    name: "Red Hook Tavern",
    address: "329 Van Brunt St, New York, NY 11231",
    restOrBar: "Restaurant",
    restType: "American/Burgers/Steaks",
    longitude: -74.012025,
    latitude: 40.677825,
    website: "https://www.redhooktavern.com/",
    imgUrl: "https://infatuation.imgix.net/media/images/reviews/red-hook-tavern/TeddyWolff.RedHookTavern.Burger.1.jpg?auto=format&h=890&w=1336",
    hours: "12pm-9pm Tues-Sun",
    menu: "https://www.redhooktavern.com/menu"

)

location24 = Location.create(
    name: "Gertie",
    address: "58 Marcy Ave, Brooklyn, NY 11211",
    restOrBar: "Restaurant",
    restType: "American",
    longitude: -73.9555,
    latitude: 40.7125,
    website: "https://www.gertie.nyc/",
    imgUrl: "https://infatuation.imgix.net/media/images/reviews/gertie/NoahDevereaux_Gertie_079_Spread.JPG?auto=format&h=890&w=1336",
    hours: "9am-5pm Thurs-Sun",
    menu: "https://www.gertie.nyc/menus"
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

user4 = User.create(
    username: "Sara",
    email: "sara@gmail.com"
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

comment4 = Comment.create(
    content: "<3 the Clam Pizza",
    user_id: 2,
    location_id: 1,
    likes: 2, 
    rating: 5, 
    username: "Nicole"
)

comment5 = Comment.create(
    content: "Love this place!",
    user_id: 4,
    location_id: 5,
    likes: 0, 
    rating: 5, 
    username: "Sara"
)