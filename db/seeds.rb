# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#-------------- User -------------------
sam = User.create(name: "Samara", address:"100 Spring St New York, NY 10012", email: "sam@sam.com", password:"sam" )



#----------------- Eternity Roses -----------------
large_round_roses = Item.create(name: "Eternity Roses Large Round Box", price: 275.00, description: "Our luxurious Large Round arrangements are comprised of 39-52 gorgeous Eternity Roses set in Parisian hat box-inspired vases. The classic arrangements will elevate any space with grace and majesty.", image:"https://cdn.shopify.com/s/files/1/0859/1856/products/HotPink_e5ac3f27-6aca-476d-af09-bfb53ce6a795_2048x2048.jpg?v=1599782535")


large_square_roses = Item.create(name: "Eternity Roses Large Square Box", price: 275.00, description: "Our timeless Large Square arrangements are comprised of 42-49 exquisite Eternity Roses set in elegant, tremendous square vases that will introduce an element of luxury to any space.", image:"https://cdn.shopify.com/s/files/1/0859/1856/products/Suede_Blush_LargeSquare_lilac._a69c9939-91fa-4371-aa34-ebbe63f6ab65_2048x2048.jpg?v=1600368081")


small_round_roses = Item.create(name: "Eternity Roses Small Round Box", price: 225.00, description: "Our timeless Small Round arrangements are comprised of 13-15 exquisite Eternity Roses set in Parisian hat box-inspired vases. The classic arrangements will elevate any space with grace and simplicity.", image:"https://cdn.shopify.com/s/files/1/0859/1856/products/White_Classic_SmallRound_pink_8e1763d6-5f1a-4b08-b6aa-e98eac2b8368_2048x2048.jpg?v=1599094940")


small_vase_roses = Item.create(name: "Fleura Vase with Eternity Roses", price: 225.00, description: "The Fleura Vase combines our coveted Le Plein style arrangement in a gorgeous handcrafted ceramic Vessel. The perfect home decor item for year round enjoyment.", image:"https://cdn.shopify.com/s/files/1/0859/1856/products/Blush_4_2048x2048.jpg?v=1589213582")


petite_roses = Item.create(name: "Le Petit", price: 125.00, description: "Our Le Petit arrangements feature 4 stunning Eternity Roses set in our luxurious  Parisian-hat box inspired square boxes. The Le Petit arrangements are ideal arrangements for elevating any small to medium space, and serve as perfect gifts.", image:"https://cdn.shopify.com/s/files/1/0859/1856/products/White_Classic_LePetite_aqua_08d3b599-f011-4c0b-bdd5-b9a21fc773ee_2048x2048.jpg?v=1617652161")


mini_roses = Item.create(name: "Le Mini Round", price: 100.00, description: "These Le Mini arrangements feature a stunning, singular Eternity Rose®, set in our luxurious Parisian-hat box inspired round boxes printed with our opulent marble print. The Le Minis are ideal arrangements for elevating any small space, and serve as perfect gifts.", image:"https://cdn.shopify.com/s/files/1/0859/1856/products/LeMiniRoundWhiteMarbleRainbow_6db72e8c-f2cf-40d9-8b39-6e60b80a2e25_2048x2048.png?v=1623686448")



single_vase_roses = Item.create(name: "Florentina", price: 125.00, description: "The single Eternity® Rose coupled with a charming rose quartz crystal radiates with positive energy. Inspired by the flower revered for its symbolism of purity and devotion, and the restorative powers of the rose quartz crystal, this ensemble promotes love, self-love and friendship.", image:"https://cdn.shopify.com/s/files/1/0859/1856/products/Yellow_00a1319e-0a00-4a3f-be0c-c99d18217adc_2048x2048.jpg?v=1596070157")


set_of_roses = Item.create(name: "The Classic Bundle", price: 150.00, description: "Meet our Classic Bundle Set—a sophisticated, elegant gift comprised of three stunning pieces—our timeless Le Mini Rounds, Le Mini Squares, and fragrant Votives, placed in a graceful pink and ivory gift box. Celebrate any occasion and elevate any space with this set of three gorgeous, polished pieces.", image:"https://cdn.shopify.com/s/files/1/0859/1856/products/ClassicBundle_white_RB_Red_2048x2048.jpg?v=1617287412")

# --------------- Order ---------------
order1 = Order.create(user_id: sam.id)

#---------------- Order Items-------------------
orderitem1 = OrderItem.create(item_id: petite_roses.id, order_id: order1.id)

orderitem2 = OrderItem.create(item_id: set_of_roses.id, order_id: order1.id)
 


