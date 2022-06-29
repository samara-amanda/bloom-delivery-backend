# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#-------------- User -------------------
sam = User.create(name: "Samara", address:"100 Spring St New York, NY 10012", email: "sam", password:"sam" )



#----------------- Eternity Roses -----------------
large_round_roses = Item.create(name: "Eternity Roses Large Round Box", price: 275.00, description: "Our luxurious Large Round arrangements are comprised of 39-52 gorgeous Eternity Roses set in Parisian hat box-inspired vases. The classic arrangements will elevate any space with grace and majesty.", image:"https://image.s5a.com/is/image/saks/0400094337696?wid=534&hei=712&qlt=90&resMode=sharp2&op_usm=0.9,1.0,8,0")


large_square_roses = Item.create(name: "Eternity Roses Large Square Box", price: 275.00, description: "Our timeless Large Square arrangements are comprised of 42-49 exquisite Eternity Roses set in elegant, tremendous square vases that will introduce an element of luxury to any space.", image:"https://i.pinimg.com/originals/53/36/85/5336852cb591afab049d21ff58248a33.jpg")


small_round_roses = Item.create(name: "Eternity Roses Small Round Box", price: 225.00, description: "Our timeless Small Round arrangements are comprised of 13-15 exquisite Eternity Roses set in Parisian hat box-inspired vases. The classic arrangements will elevate any space with grace and simplicity.", image:"https://cdn.shopify.com/s/files/1/0859/1856/products/White_Classic_SmallRound_pink_8e1763d6-5f1a-4b08-b6aa-e98eac2b8368_2048x2048.jpg?v=1599094940")


small_vase_roses = Item.create(name: "Fleura Vase with Eternity Roses", price: 225.00, description: "The Fleura Vase combines our coveted Le Plein style arrangement in a gorgeous handcrafted ceramic Vessel. The perfect home decor item for year round enjoyment.", image:"https://cdn.shopify.com/s/files/1/0859/1856/products/fleura_thumb2_2048x2048.jpg?v=1649355316")


bear_roses = Item.create(name: "Rosie The Bear", price: 75.00, description: "These bears are known to win the hearts of any and everyone that receive's them. Make someone happy today with Rosie the Bear.", image:"https://cdn.shopify.com/s/files/1/1464/3472/products/image_b1b5f0d3-c84d-48d4-ae4a-3b21eec8f821_800x.jpg?v=1612379975" )


bin_roses = Item.create(name: "Assorted Color Roses in Acrylic Bin", price: 170.00, description: "4 rows of assorted color roses in an Acrylic bin that is great to spruce up any room in your home. Showcase your eternity flowers, they're well worth it.", image:"https://cdn.shopify.com/s/files/1/0075/4053/9439/products/9F0D1BD1-D9C3-4ADB-B158-05C51FC08665_629b4b06-ecc4-4b1c-9327-28da809fc729.jpg?v=1578436307")


personalized_roses = Item.create(name: "Personalized Eternity Rose Box", price: 245.00, description: "Looking for something a little mor personal? Customize your own eternity rose box today, choose from custom roses, assortment, or even a custom box. Let your person know how rare and valued they are.", image:"https://bucketoflove.eu/wp-content/uploads/2018/11/25-12_Bucket-of-Love_long-lasting-roses.jpg")


gold_roses = Item.create(name: "Metallica Luxury Rose Set", price: 265.00, description: "This Metallic Gold and Peach arrangement channels your inner Coco Chanel. If you're thinking extra lux, try these.", image:"https://cdn.shopify.com/s/files/1/0026/7416/3756/products/Noir_Square_Metallic-Copper-and-Peach_Front_1280x.jpg?v=1616221216")



heart_roses = Item.create(name: "Heart Rose Box", price: 199.00, description: "Love is a universal language, let it be known with our Heart Rose Box.", image:"https://s3.infinityroses.com/uploads/gift/gift_third/185/medium_Light-REd-Heart-Medium-Top-off_copy.jpg")

petite_roses = Item.create(name: "Le Petit", price: 125.00, description: "Our Le Petit arrangements feature 4 stunning Eternity Roses set in our luxurious  Parisian-hat box inspired square boxes. The Le Petit arrangements are ideal arrangements for elevating any small to medium space, and serve as perfect gifts.", image:"https://cdn.shopify.com/s/files/1/0859/1856/products/White_Classic_LePetite_aqua_08d3b599-f011-4c0b-bdd5-b9a21fc773ee_2048x2048.jpg?v=1617652161")


mini_roses = Item.create(name: "Le Mini Round", price: 100.00, description: "These Le Mini arrangements feature a stunning, singular Eternity Rose®, set in our luxurious Parisian-hat box inspired round boxes printed with our opulent marble print. The Le Minis are ideal arrangements for elevating any small space, and serve as perfect gifts.", image:"https://cdn.shopify.com/s/files/1/0859/1856/products/LeMiniRoundWhiteMarbleRainbow_6db72e8c-f2cf-40d9-8b39-6e60b80a2e25_2048x2048.png?v=1623686448")

single_vase_roses = Item.create(name: "Florentina", price: 125.00, description: "The single Eternity® Rose coupled with a charming rose quartz crystal radiates with positive energy. Inspired by the flower revered for its symbolism of purity and devotion, and the restorative powers of the rose quartz crystal, this ensemble promotes love, self-love and friendship.", image:"https://cdn.shopify.com/s/files/1/0859/1856/products/florentina_thumb2_2048x2048.jpg?v=1649355721")


set_of_roses = Item.create(name: "The Classic Bundle", price: 150.00, description: "Meet our Classic Bundle Set—a sophisticated, elegant gift comprised of three stunning pieces—our timeless Le Mini Rounds, Le Mini Squares, and fragrant Votives, placed in a graceful pink and ivory gift box. Celebrate any occasion and elevate any space with this set of three gorgeous, polished pieces.", image:"https://cdn.shopify.com/s/files/1/0859/1856/products/classic-bundle-3_cd35b47e-93e5-48ba-af52-c620730b25bb_2048x2048.jpg?v=1648141344")

# --------------- Order ---------------
order1 = Order.create(user_id: sam.id)
order2 = Order.create(user_id: sam.id)

#---------------- Order Items-------------------
orderitem1 = OrderItem.create(item_id: petite_roses.id, order_id: order1.id)

orderitem2 = OrderItem.create(item_id: set_of_roses.id, order_id: order1.id)
 
##-------------

order2item1 = OrderItem.create(item_id: large_square_roses.id, order_id: order2.id)
order2item2 = OrderItem.create(item_id: small_vase_roses.id, order_id: order2.id)
order2item3 = OrderItem.create(item_id: mini_roses.id, order_id: order2.id)
