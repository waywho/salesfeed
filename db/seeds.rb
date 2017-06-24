# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Category.destroy_all
# clothing_category = Category.create(name: "Clothing")
# shoes_category = Category.create(name: "Shoes")
# accessory_category = Category.create(name: "Accessories")
# makeup_category = Category.create(name: 'Make-Up & Fragrance')
# skin_category = Category.create(name: 'Skin & Body Care')
# hair_category = Category.create(name: 'Hair Care & Styling')
# men_groom_category = Category.create(name: "Men's Toiletries & Grooming")
# sports_category = Category.create(name: 'Sports')

# User.create(email: "weihsi.hu@gmail.com", password: "password", admin: true)

# Gender.destroy_all
men = Gender.create(name: "men", description: "Whether you are looking for your everyday staples or hunting for that must-have piece, our stores offer the latest to dress your Clark Kent persona or the Superman in you. And collect points while you’re at it.")
women = Gender.create(name: "women", description: "Experience the thrill of shopping. Explore our broad selection of clothing, shoes, handbags, activewear and accessories here. Keep up with the fashion trend, define your style and complete your wardrobe - all while collecting points for your next splurge.
")
beauty = Gender.create(name: "beauty", description: "You might kill the san-makeup look, but taking care of your skin is a top priority. Pamper yourself with your wide collection of skincare products. And when you’re feeling up for some glam, we have all the essentials to enhance your natural beauty. Feel even better knowing that you can collect points for every dollar you spend.")

men = Gender.find_by_name("men")
women = Gender.find_by_name("women")
beauty = Gender.find_by_name("beauty")


Category.destroy_all
Subcategory.destroy_all

category = men.categories.create(name: "Clothing")
category.subcategories.create(name: "Coats & Jackets")  

category = men.categories.create(name: "Clothing")  
category.subcategories.create(name: "Suits")  

category = men.categories.create(name: "Clothing")  
category.subcategories.create(name: "Blazers")  

category = men.categories.create(name: "Clothing")  
category.subcategories.create(name: "Waistcoats")  

category = men.categories.create(name: "Clothing")  
category.subcategories.create(name: "Sweatshirts & Hoodies")  

category = men.categories.create(name: "Clothing")  
category.subcategories.create(name: "Jumpers & Cardigans")  

category = men.categories.create(name: "Clothing")  
category.subcategories.create(name: "Shirts")  

category = men.categories.create(name: "Clothing")  
category.subcategories.create(name: "T-Shirts")  

category = men.categories.create(name: "Clothing")  
category.subcategories.create(name: "Polo Shirts & Rugby Shirts")  

category = men.categories.create(name: "Clothing")  
category.subcategories.create(name: "Jeans")  

category = men.categories.create(name: "Clothing")  
category.subcategories.create(name: "Trousers")  

category = men.categories.create(name: "Clothing")  
category.subcategories.create(name: "Shorts")  

category = men.categories.create(name: "Clothing")  
category.subcategories.create(name: "Sports Clothes")  

category = men.categories.create(name: "Clothing")  
category.subcategories.create(name: "Swimwear")  

category = men.categories.create(name: "Clothing")  
category.subcategories.create(name: "Sports Swimwear")  

category = men.categories.create(name: "Clothing")  
category.subcategories.create(name: "Pyjamas & Nightwear")  

category = men.categories.create(name: "Clothing")  
category.subcategories.create(name: "Robes & Dressing")  

category = men.categories.create(name: "Clothing")  
category.subcategories.create(name: "Gowns")  

category = men.categories.create(name: "Clothing")  
category.subcategories.create(name: "Underwear")  

category = men.categories.create(name: "Clothing")  
category.subcategories.create(name: "Socks")  

category = men.categories.create(name: "Shoes")   
category.subcategories.create(name: "Boots")  

category = men.categories.create(name: "Shoes")  
category.subcategories.create(name: "Trainers & Plimsolls")  

category = men.categories.create(name: "Shoes")  
category.subcategories.create(name: "Sports Footwear")  

category = men.categories.create(name: "Shoes")  
category.subcategories.create(name: "Walking & Hiking Shoes")  

category = men.categories.create(name: "Shoes")  
category.subcategories.create(name: "Slippers")  

category = men.categories.create(name: "Shoes")  
category.subcategories.create(name: "Sandals")  

category = men.categories.create(name: "Shoes")  
category.subcategories.create(name: "Flip Flops")

category = men.categories.create(name: "Accessories")   
category.subcategories.create(name: "Watches")  

category = men.categories.create(name: "Accessories")  
category.subcategories.create(name: "Jewellery")  

category = men.categories.create(name: "Accessories")  
category.subcategories.create(name: "Bags")  

category = men.categories.create(name: "Accessories")  
category.subcategories.create(name: "Wallets")  

category = men.categories.create(name: "Accessories")  
category.subcategories.create(name: "Formal Accessories")  

category = men.categories.create(name: "Accessories")  
category.subcategories.create(name: "Belts")  

category = men.categories.create(name: "Accessories")  
category.subcategories.create(name: "Hats, Gloves & Scarves")  

category = men.categories.create(name: "Accessories")  
category.subcategories.create(name: "Sunglasses")  

category = men.categories.create(name: "Accessories")  
category.subcategories.create(name: "Umbrellas")  

category = men.categories.create(name: "Accessories")  
category.subcategories.create(name: "Keyrings")

category = women.categories.create(name: "Clothing")  
category.subcategories.create(name: "Dresses")  

category = women.categories.create(name: "Clothing")  
category.subcategories.create(name: "Coats & Jackets")  

category = women.categories.create(name: "Clothing")  
category.subcategories.create(name: "Knitwear")  

category = women.categories.create(name: "Clothing")  
category.subcategories.create(name: "Shirts & Tops")  

category = women.categories.create(name: "Clothing")  
category.subcategories.create(name: "Lingerie & Underwear")  

category = women.categories.create(name: "Clothing")  
category.subcategories.create(name: "Trousers & Leggins")  

category = women.categories.create(name: "Clothing")  
category.subcategories.create(name: "Jeans")  

category = women.categories.create(name: "Clothing")  
category.subcategories.create(name: "Skirts")  

category = women.categories.create(name: "Clothing")  
category.subcategories.create(name: "Jumpsuits & Playsuits")  

category = women.categories.create(name: "Clothing")  
category.subcategories.create(name: "Shorts")  

category = women.categories.create(name: "Clothing")  
category.subcategories.create(name: "Nightwear")  

category = women.categories.create(name: "Clothing")  
category.subcategories.create(name: "Swimwear & Beachwear")  

category = women.categories.create(name: "Clothing")  
category.subcategories.create(name: "Tights")  

category = women.categories.create(name: "Clothing")  
category.subcategories.create(name: "Socks")  

category = women.categories.create(name: "Clothing")  
category.subcategories.create(name: "Cashmere")  

category = women.categories.create(name: "Clothing")  
category.subcategories.create(name: "Sports Clothes")  

category = women.categories.create(name: "Clothing")  
category.subcategories.create(name: "Sports Swimsuits")  

category = women.categories.create(name: "Clothing")  
category.subcategories.create(name: "Workwear")  

category = women.categories.create(name: "Clothing")  
category.subcategories.create(name: "Maternity Clotes")  

category = women.categories.create(name: "Shoes")  
category.subcategories.create(name: "Court Shoes")  

category = women.categories.create(name: "Shoes")  
category.subcategories.create(name: "Boots")  

category = women.categories.create(name: "Shoes")  
category.subcategories.create(name: "Brogues")  

category = women.categories.create(name: "Shoes")  
category.subcategories.create(name: "Loafers")  

category = women.categories.create(name: "Shoes")  
category.subcategories.create(name: "Pumps")  

category = women.categories.create(name: "Shoes")  
category.subcategories.create(name: "Sandals")  

category = women.categories.create(name: "Shoes")  
category.subcategories.create(name: "Espadrilles")  

category = women.categories.create(name: "Shoes")  
category.subcategories.create(name: "Flip Flops")  

category = women.categories.create(name: "Shoes")  
category.subcategories.create(name: "Trainers & Plimsolls")  

category = women.categories.create(name: "Shoes")  
category.subcategories.create(name: "Slippers")  

category = women.categories.create(name: "Shoes")  
category.subcategories.create(name: "Sports Footwear")  

category = women.categories.create(name: "Accessories")  
category.subcategories.create(name: "Handbags, Bags & Purses")  

category = women.categories.create(name: "Accessories")  
category.subcategories.create(name: "Jewellery")  

category = women.categories.create(name: "Accessories")  
category.subcategories.create(name: "Watches")  

category = women.categories.create(name: "Accessories")  
category.subcategories.create(name: "Sunglasses")  

category = women.categories.create(name: "Accessories")  
category.subcategories.create(name: "Occasion Hats & Fascinators")  

category = women.categories.create(name: "Accessories")  
category.subcategories.create(name: "Scarves")  

category = women.categories.create(name: "Accessories")  
category.subcategories.create(name: "Hats")  

category = women.categories.create(name: "Accessories")  
category.subcategories.create(name: "Belts")  

category = women.categories.create(name: "Accessories")  
category.subcategories.create(name: "Umbrellas")  

category = women.categories.create(name: "Accessories")  
category.subcategories.create(name: "Keyrings")  

category = women.categories.create(name: "Accessories")  
category.subcategories.create(name: "Handkerchiefs")
  

category = beauty.categories.create(name: "Make-Up & Fragrance") 
category.subcategories.create(name: "Face")  

category = beauty.categories.create(name: "Make-Up & Fragrance")  
category.subcategories.create(name: "Lips")  

category = beauty.categories.create(name: "Make-Up & Fragrance")  
category.subcategories.create(name: "Eyes")  

category = beauty.categories.create(name: "Make-Up & Fragrance")  
category.subcategories.create(name: "Nails")  

category = beauty.categories.create(name: "Make-Up & Fragrance")  
category.subcategories.create(name: "Make-Up Accessories")  

category = beauty.categories.create(name: "Make-Up & Fragrance")  
category.subcategories.create(name: "Perfume")  

category = beauty.categories.create(name: "Make-Up & Fragrance")  
category.subcategories.create(name: "Aftershave")  

category = beauty.categories.create(name: "Skin & Body Care")    
category.subcategories.create(name: "Skin Care")  

category = beauty.categories.create(name: "Skin & Body Care")  
category.subcategories.create(name: "Treatments, Supplements & Anti-Ageing")  

category = beauty.categories.create(name: "Skin & Body Care")  
category.subcategories.create(name: "Beauty Cleansing Devices")  

category = beauty.categories.create(name: "Skin & Body Care")  
category.subcategories.create(name: "Bath & Shower")  

category = beauty.categories.create(name: "Skin & Body Care")  
category.subcategories.create(name: "Body Care")  

category = beauty.categories.create(name: "Skin & Body Care")  
category.subcategories.create(name: "Hand & Foot Care")  

category = beauty.categories.create(name: "Skin & Body Care")  
category.subcategories.create(name: "Tanning & Suncare")  

category = beauty.categories.create(name: "Skin & Body Care")  
category.subcategories.create(name: "Body Firming & Toning")  

category = beauty.categories.create(name: "Hair Care & Styling")  
category.subcategories.create(name: "Shampoos & Conditioners")  

category = beauty.categories.create(name: "Hair Care & Styling")  
category.subcategories.create(name: "Hair Oils & Treatments")  

category = beauty.categories.create(name: "Hair Care & Styling")  
category.subcategories.create(name: "Hair Styling & Finishing Products")  

category = beauty.categories.create(name: "Hair Care & Styling")  
category.subcategories.create(name: "Hair Accessories")  

category = beauty.categories.create(name: "Hair Care & Styling")  
category.subcategories.create(name: "Hair Brushes")  

category = beauty.categories.create(name: "Hair Care & Styling")  
category.subcategories.create(name: "Hair Straighteners")  

category = beauty.categories.create(name: "Hair Care & Styling")  
category.subcategories.create(name: "Hair Stylers")  

category = beauty.categories.create(name: "Hair Care & Styling")  
category.subcategories.create(name: "Hair Dryers")  

category = beauty.categories.create(name: "Hair Care & Styling")  
category.subcategories.create(name: "Hair Curlers")  

category = beauty.categories.create(name: "Men's Toiletries & Grooming")  
category.subcategories.create(name: "Men's Gift Sets")  

category = beauty.categories.create(name: "Men's Toiletries & Grooming")  
category.subcategories.create(name: "Men's Skin Care")  

category = beauty.categories.create(name: "Men's Toiletries & Grooming")  
category.subcategories.create(name: "Men's Bath & Body")  

category = beauty.categories.create(name: "Men's Toiletries & Grooming")  
category.subcategories.create(name: "Men's Shaving")  

category = beauty.categories.create(name: "Men's Toiletries & Grooming")  
category.subcategories.create(name: "Men's Hair Care")  

category = beauty.categories.create(name: "Men's Toiletries & Grooming")  
category.subcategories.create(name: "Men's Grooming Devices")  

category = beauty.categories.create(name: "Men's Toiletries & Grooming")  
category.subcategories.create(name: "Men's Wash Bags")


# subcategory = Subcategory.find_by_name("Coats & Jackets")  
# men.categories.create(name: "Clothing", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Suits")  
# men.categories.create(name: "Clothing", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Blazers")  
# men.categories.create(name: "Clothing", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Waistcoats")  
# men.categories.create(name: "Clothing", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Sweatshirts & Hoodies")  
# men.categories.create(name: "Clothing", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Jumpers & Cardigans")  
# men.categories.create(name: "Clothing", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Shirts")  
# men.categories.create(name: "Clothing", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("T-Shirts")  
# men.categories.create(name: "Clothing", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Polo Shirts & Rugby Shirts")  
# men.categories.create(name: "Clothing", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Jeans")  
# men.categories.create(name: "Clothing", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Trousers")  
# men.categories.create(name: "Clothing", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Shorts")  
# men.categories.create(name: "Clothing", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Sports Clothes")  
# men.categories.create(name: "Clothing", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Swimwear")  
# men.categories.create(name: "Clothing", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Sports Swimwear")  
# men.categories.create(name: "Clothing", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Pyjamas & Nightwear")  
# men.categories.create(name: "Clothing", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Robes & Dressing")  
# men.categories.create(name: "Clothing", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Gowns")  
# men.categories.create(name: "Clothing", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Underwear")  
# men.categories.create(name: "Clothing", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Socks")  
# men.categories.create(name: "Clothing", subcategory_id: subcategory.id)   

# subcategory = Subcategory.find_by_name("Boots")  
# men.categories.create(name: "Shoes", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Trainers & Plimsolls")  
# men.categories.create(name: "Shoes", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Sports Footwear")  
# men.categories.create(name: "Shoes", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Walking & Hiking Shoes")  
# men.categories.create(name: "Shoes", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Slippers")  
# men.categories.create(name: "Shoes", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Sandals")  
# men.categories.create(name: "Shoes", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Flip Flops")
# men.categories.create(name: "Shoes", subcategory_id: subcategory) .id   

# subcategory = Subcategory.find_by_name("Watches")  
# men.categories.create(name: "Accessories", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Jewellery")  
# men.categories.create(name: "Accessories", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Bags")  
# men.categories.create(name: "Accessories", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Wallets")  
# men.categories.create(name: "Accessories", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Formal Accessories")  
# men.categories.create(name: "Accessories", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Belts")  
# men.categories.create(name: "Accessories", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Hats, Gloves & Scarves")  
# men.categories.create(name: "Accessories", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Sunglasses")  
# men.categories.create(name: "Accessories", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Umbrellas")  
# men.categories.create(name: "Accessories", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Keyrings")
# men.categories.create(name: "Accessories", subcategory_id: subcategory.id)   

# subcategory = Subcategory.find_by_name("Dresses")  
# women.categories.create(name: "Clothing", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Coats & Jackets")  
# women.categories.create(name: "Clothing", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Knitwear")  
# women.categories.create(name: "Clothing", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Shirts & Tops")  
# women.categories.create(name: "Clothing", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Lingerie & Underwear")  
# women.categories.create(name: "Clothing", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Trousers & Leggins")  
# women.categories.create(name: "Clothing", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Jeans")  
# women.categories.create(name: "Clothing", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Skirts")  
# women.categories.create(name: "Clothing", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Jumpsuits & Paysuits")  
# women.categories.create(name: "Clothing", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Shorts")  
# women.categories.create(name: "Clothing", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Nightwear")  
# women.categories.create(name: "Clothing", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Swimwear & Beachwear")  
# women.categories.create(name: "Clothing", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Tights")  
# women.categories.create(name: "Clothing", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Socks")  
# women.categories.create(name: "Clothing", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Cashmere")  
# women.categories.create(name: "Clothing", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Sports Clothes")  
# women.categories.create(name: "Clothing", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Sports Swimsuits")  
# women.categories.create(name: "Clothing", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Workwear")  
# women.categories.create(name: "Clothing", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Maternity Clotes")  
# women.categories.create(name: "Clothing", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Court Shoes")  
# women.categories.create(name: "Shoes", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Boots")  
# women.categories.create(name: "Shoes", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Brogues")  
# women.categories.create(name: "Shoes", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Loafers")  
# women.categories.create(name: "Shoes", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Pumps")  
# women.categories.create(name: "Shoes", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Sandals")  
# women.categories.create(name: "Shoes", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Espadrilles")  
# women.categories.create(name: "Shoes", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Flip Flops")  
# women.categories.create(name: "Shoes", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Trainers & Plimsolls")  
# women.categories.create(name: "Shoes", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Slippers")  
# women.categories.create(name: "Shoes", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Sports Footwear")  
# women.categories.create(name: "Shoes", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Handbags, Bags & Purses")  
# women.categories.create(name: "Accessories", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Jewellery")  
# women.categories.create(name: "Accessories", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Watches")  
# women.categories.create(name: "Accessories", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Sunglasses")  
# women.categories.create(name: "Accessories", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Occasion Hats & Fascinators")  
# women.categories.create(name: "Accessories", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Scarves")  
# women.categories.create(name: "Accessories", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Hats")  
# women.categories.create(name: "Accessories", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Belts")  
# women.categories.create(name: "Accessories", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Umbrellas")  
# women.categories.create(name: "Accessories", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Keyrings")  
# women.categories.create(name: "Accessories", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Handkerchiefs")
# women.categories.create(name: "Accessories", subcategory_id: subcategory.id)   


# subcategory = Subcategory.find_by_name("Face")  
# beauty.categories.create(name: "Make-Up & Fragrance", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Lips")  
# beauty.categories.create(name: "Make-Up & Fragrance", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Eyes")  
# beauty.categories.create(name: "Make-Up & Fragrance", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Nails")  
# beauty.categories.create(name: "Make-Up & Fragrance", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Make-Up Accessories")  
# beauty.categories.create(name: "Make-Up & Fragrance", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Perfume")  
# beauty.categories.create(name: "Make-Up & Fragrance", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Aftershave")  
# beauty.categories.create(name: "Make-Up & Fragrance", subcategory_id: subcategory.id)   

# subcategory = Subcategory.find_by_name("Skin Care")  
# beauty.categories.create(name: "Skin & Body Care", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Treatments, Supplements & Anti-Ageing")  
# beauty.categories.create(name: "Skin & Body Care", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Beauty Cleansing Devices")  
# beauty.categories.create(name: "Skin & Body Care", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Bath & Shower")  
# beauty.categories.create(name: "Skin & Body Care", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Body Care")  
# beauty.categories.create(name: "Skin & Body Care", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Hand & Foot Care")  
# beauty.categories.create(name: "Skin & Body Care", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Tanning & Suncare")  
# beauty.categories.create(name: "Skin & Body Care", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Body Firming & Toning")  
# beauty.categories.create(name: "Skin & Body Care", subcategory_id: subcategory.id) 

# subcategory = Subcategory.find_by_name("Shampoos & Conditioners")  
# beauty.categories.create(name: "Hair Care & Styling", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Hair Oils & Treatments")  
# beauty.categories.create(name: "Hair Care & Styling", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Hair Styling & Finishing Products")  
# beauty.categories.create(name: "Hair Care & Styling", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Hair Accessories")  
# beauty.categories.create(name: "Hair Care & Styling", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Hair Brushes")  
# beauty.categories.create(name: "Hair Care & Styling", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Hair Straighteners")  
# beauty.categories.create(name: "Hair Care & Styling", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Hair Stylers")  
# beauty.categories.create(name: "Hair Care & Styling", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Hair Dryers")  
# beauty.categories.create(name: "Hair Care & Styling", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Hair Curlers")  
# beauty.categories.create(name: "Hair Care & Styling", subcategory_id: subcategory.id)   

# subcategory = Subcategory.find_by_name("Men's Gift Sets")  
# beauty.categories.create(name: "Men's Toiletries & Grooming", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Men's Skin Care")  
# beauty.categories.create(name: "Men's Toiletries & Grooming", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Men's Bath & Body")  
# beauty.categories.create(name: "Men's Toiletries & Grooming", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Men's Shaving")  
# beauty.categories.create(name: "Men's Toiletries & Grooming", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Men's Hair Care")  
# beauty.categories.create(name: "Men's Toiletries & Grooming", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Men's Grooming Devices")  
# beauty.categories.create(name: "Men's Toiletries & Grooming", subcategory_id: subcategory.id)  

# subcategory = Subcategory.find_by_name("Men's Wash Bags")
# beauty.categories.create(name: "Men's Toiletries & Grooming", subcategory_id: subcategory.id) 


# Retailer.find(1).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-1/c34.9.113.113/294541_216852901709707_668021287_n.jpg?oh=5d057d65c2c7eabc928e30c7866d40fd&oe=5928C3C7")
# Retailer.find(2).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-1/11131713_805151309576223_3231790097577814048_n.jpg?oh=39ed82951ce94ab49fbdd8dd0851de44&oe=5939BF57")
# Retailer.find(3).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-1/c15.15.189.189/165418_507217139315242_840313727_n.jpg?oh=092871f556c56f0ab3457e2c8a1e2cd1&oe=593ED928")
# Retailer.find(4).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-1/p480x480/14955861_1806025083004520_31544796708356092_n.jpg?oh=071ed5f470975c2311747c621305a66d&oe=593EE18E")
# Retailer.find(5).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-1/601259_10151057362475011_1268161038_n.jpg?oh=be674c9355242640487a46bd730eae10&oe=593635C0")
# Retailer.find(6).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/16298426_1800131800312485_8647713474779026261_n.jpg?oh=286011a06356327632e67f446ea8863a&oe=593834C4")
# Retailer.find(7).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/600862_10151725349048994_1278347222_n.jpg?oh=8f22604f771e6835c0dc69c89786b32a&oe=593C7459")
# Retailer.find(8).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-1/p480x480/13062496_1737641109814341_4655364050637275847_n.jpg?oh=d97c787a1c9ddaecced804aab4edc986&oe=59413735")
# Retailer.find(9).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/1521842_628615063866041_1590844467_n.jpg?oh=ba52f097f74667217b8ccf088237f1d2&oe=5931D21D")
# Retailer.find(10).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/12096280_1642370889339828_6728938356352340266_n.png?oh=44cd5c5f77f34f3683ba4a7f153eae0a&oe=592C44DE")
# Retailer.find(11).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/15622022_1436591009714820_7283165187724271716_n.png?oh=a64e595f54f988adb6c20b835ac6b41c&oe=596F23B3")
# Retailer.find(12).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/10407427_567955263332856_8841499949114380314_n.jpg?oh=9d82d442ce820098c7fe2f57adba154e&oe=59400AFB")
# Retailer.find(13).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/253195_10151057689157545_1958292906_n.jpg?oh=4b15ff10b73873f7e06f0e18d7dd169d&oe=5929252A")
# Retailer.find(14).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/16999003_10155156469029456_7808617784702206976_n.jpg?oh=dcab12d7ac69895b097a525ee46aa812&oe=593ABDBC")
# Retailer.find(15).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/10405486_745204568887266_5253889042435555893_n.jpg?oh=f4547da54e4ceadb2cd68c1276bfd064&oe=592FD0F1")
# Retailer.find(16).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/10441116_747105375350433_3583411505654918394_n.png?oh=d9ac82150e73a534bcee6419c48311c5&oe=59717EF6")
# Retailer.find(17).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/16998992_255627638219713_4172921467044473311_n.jpg?oh=b408184e70f58479c24dde60a9fbbe1e&oe=593E5DAD")
# Retailer.find(18).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/598799_10151065891881370_1475329608_n.jpg?oh=f0e55c5b84e4e0b12e3d419d59c04065&oe=5941BA51")
# Retailer.find(19).update_attributes(remote_logo_url: "https://instagram.ftxl1-1.fna.fbcdn.net/t51.2885-19/s150x150/15101720_587524878099653_8819971146293182464_a.jpg")
# Retailer.find(20).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/12400486_1548805995445125_1701271370367372309_n.jpg?oh=eb1fafccb025b9667a6c31fcb48afc4b&oe=59402870")
# Retailer.find(21).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/971142_579313665454188_917462594_n.jpg?oh=763c2ad8bceae470a4b866852cabbc9e&oe=592961C5")
# Retailer.find(22).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/13332826_10153623393686430_1458996096110349015_n.jpg?oh=aee4191fb1cd847b669bd5d265974876&oe=593BF0B9")
# Retailer.find(23).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/1545722_10153715375160398_1030747990_n.jpg?oh=0806f14a02e282b9a96ee64dc7dd5414&oe=59704AA4")
# Retailer.find(24).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/14316922_1760427850881586_9089348981330187479_n.png?oh=419f968ae4c80e0dacf97b88ab458c65&oe=5940D3B9")
# Retailer.find(25).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/14141539_10154423312863798_578885839317419118_n.jpg?oh=e1a5b8e4724f9ec9a84ba3922c654f95&oe=592A95F1")
# Retailer.find(26).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/14316922_1760427850881586_9089348981330187479_n.png?oh=419f968ae4c80e0dacf97b88ab458c65&oe=5940D3B9")
# Retailer.find(27).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/541981_10150606553281560_1152510833_n.jpg?oh=99718d66631369c09397ec60802fee6d&oe=592A0F4B")
# Retailer.find(28).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/10425420_10153025571044555_3734368179111911486_n.jpg?oh=abbec2ed09345dbf52a46592ab583bce&oe=593C6933")
# Retailer.find(29).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/17021432_10154456142883174_7081032692917836778_n.jpg?oh=08b80a42582819bff8c91b463502bcbe&oe=5931558E")
# Retailer.find(30).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/15965759_10158729431870377_5735546085736448414_n.jpg?oh=d39735be995cd2fe09cc071e1e07d280&oe=5932F213")
# Retailer.find(31).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/10463039_665251166894056_2497951161907291308_n.jpg?oh=b96d6599c0554371c2868048bd0227b0&oe=597119CC")
# Retailer.find(32).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/12932549_1074916102574100_3394564082568160109_n.jpg?oh=32585e9e1969b3c6d4da58486683fdb3&oe=59368531")
# Retailer.find(33).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/13781916_10154363795663055_6573381229084412878_n.jpg?oh=f4a224c8d0989046f41673133a018a6e&oe=597208E5")
# Retailer.find(34).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/14224837_10154595083439589_7674229907990282856_n.jpg?oh=5c86725c65540d1bfa821105c6008faa&oe=592CEE66")
# Retailer.find(35).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/15940378_10154890762693048_7675877123958548915_n.png?oh=2d74b33f7c4f7bae8f718546b81914c8&oe=592D7C5C")
# Retailer.find(36).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-1/1798840_10152308341524497_1384947506_n.jpg?oh=0043c24b49d5803ed43150f417eb6ec8&oe=592A2ACB")
# Retailer.find(37).update_attributes(remote_logo_url: "https://s13.postimg.org/us1lu00yv/brookta.jpg")
# Retailer.find(38).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/1375968_10152340340506927_1620078629526974831_n.jpg?oh=accf30f222aac8c7f5752f06cd0776b3&oe=593CA56C")
# Retailer.find(39).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/10906434_10152536872147187_6043068607377264030_n.jpg?oh=23a6712e147e16978481d2347c1d93cf&oe=596F190B")
# Retailer.find(40).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/16298726_10154724165950269_4498383150423709633_n.jpg?oh=00dd11ee1b5352b8f569da3ba70aeb13&oe=592CD222")
# Retailer.find(41).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/14915159_10153924091207116_6308453730158090503_n.jpg?oh=3e22ef615bb18b409c564e6b2ae55af5&oe=593D7086")
# Retailer.find(42).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/15823555_10155033085704474_6766474780217791650_n.jpg?oh=ac63aa47f20f4f4859fdc6c78d9af3ac&oe=593FB795")
# Retailer.find(43).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/13332826_10153623393686430_1458996096110349015_n.jpg?oh=aee4191fb1cd847b669bd5d265974876&oe=593BF0B9")
# Retailer.find(44).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/11256588_823887207660866_2149790577516525320_n.jpg?oh=572930f2491c82ea3e8c7a0b2836a1c0&oe=5939CD6D")
# Retailer.find(45).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/16299051_10156112239413868_2862472429245183000_n.jpg?oh=9a9f2beeac1a24314a7ca167d386c33c&oe=59351686")
# Retailer.find(46).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/13494978_1025800630789600_3046874908500877372_n.jpg?oh=3f51009655023c3c40c9c84669f0d28b&oe=592743B8")
# Retailer.find(47).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/14141527_10153956193870028_4006331105860896955_n.jpg?oh=6eb365b91bfb1eb87d719ce7985f4722&oe=59387AAA")
# Retailer.find(48).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/16113976_10158463620170179_3941935780278522112_n.jpg?oh=11217fce49287fe8782bea9a2d8c09da&oe=592D1829")
# Retailer.find(49).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/13925274_10154339748067969_8568427134363749069_n.jpg?oh=09dc7c0e1cd33368bc5f2bab3acd485b&oe=5972AA82")
# Retailer.find(50).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/1234922_10151802470403567_91701707_n.jpg?oh=f9b5e5f81960acd7361a36f301f18598&oe=592D417D")
# Retailer.find(51).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/576429_427273950634910_1656550804_n.jpg?oh=9d4907968f67a155d2dfd24a24ac5515&oe=59268BB8")
# Retailer.find(52).update_attributes(remote_logo_url: "https://instagram.ftxl1-1.fna.fbcdn.net/t51.2885-19/11357445_1680641535498162_1791325866_a.jpg")
# Retailer.find(53).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/12191717_10153649273735540_5495445418287029485_n.jpg?oh=968ffaafc7581f8c8161bb4c64e828f1&oe=592E4894")
# Retailer.find(54).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/15873090_10154841314733468_7191558737348682662_n.png?oh=7a8f97b2bdada29c745b65ba1aa6c934&oe=59715A0D")
# Retailer.find(55).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/546195_10150790275735337_461291368_n.jpg?oh=c5a787a064879adace3db8dd300aba3d&oe=593F389B")
# Retailer.find(56).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/10368_614513025239038_629405594_n.jpg?oh=de1f628609aa67dd1093227961ae9161&oe=5941B5E6")
# Retailer.find(57).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/1005196_595423650497565_10671149_n.jpg?oh=b6eb41117858e2a9f197c4bcb469ab45&oe=596D515E")
# Retailer.find(58).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/12195961_10153757459600477_6196533531131596877_n.png?oh=7459611a0ffcaf6569cd3be7fb030f78&oe=592C5C4D")
# Retailer.find(59).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/12249883_1028037927260983_9212986886445128196_n.jpg?oh=0ee4c0cc314b101dab6fd5f81c4277a1&oe=596DCAE8")
# Retailer.find(60).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/1002996_364657473659934_932092541_n.jpg?oh=0bd5f4e2f926ba47e2b0b61e1595d744&oe=59319FFC")
# Retailer.find(61).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/10403542_675229449231399_3507218519369370689_n.jpg?oh=f047469c87d1036d84eff60b8060da76&oe=596BC69A")
# Retailer.find(62).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/14517641_10155308349051808_2013812550461228775_n.jpg?oh=a3eedbb14a2c3b941c35370954d08460&oe=596FDD90")
# Retailer.find(63).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/303302_10150779482833623_840857942_n.jpg?oh=e2930e84aa19bcfe14fbe0163a3c4922&oe=593F059E")
# Retailer.find(64).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/10356214_743787402400394_1909215172994559537_n.jpg?oh=ec6b97d52ed01387978ce4037c3fc973&oe=5972AB46")
# Retailer.find(65).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/15826257_1431351196905079_4092669174802936804_n.jpg?oh=29c2e3156c65609947de232929474446&oe=5938BAC1")
# Retailer.find(66).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/13512069_10154246174154250_6325306065254414637_n.jpg?oh=7aca7a8cbb60b6ef5ca56214de032e9a&oe=592D03B7")
# Retailer.find(67).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/12801562_1050381011675190_6600546309500057464_n.jpg?oh=1a4ace3c468dbba417c797e510c98716&oe=596F46D8")
# Retailer.find(68).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/64458_566958616661804_1333125703_n.jpg?oh=2e612fe9e457385e71a62229d62ca65b&oe=59266704")
# Retailer.find(69).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/12814732_1005444579534376_6150186718239973549_n.png?oh=527d9ec8b916986f209b9ce7dbb0404b&oe=5938EAFB")
# Retailer.find(70).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/14937191_1275570939150875_3975360540776060664_n.jpg?oh=dd190d7c18a0d41186667304946645c6&oe=59369FAA")
# Retailer.find(71).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/561900_485243691487216_562759868_n.jpg?oh=6c9cc9192550187d7367feca9229ef20&oe=59370F11")
# Retailer.find(72).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/1919644_10152335354668218_1809919719249468798_n.jpg?oh=5d31c5f2be445a9fab25ba9dd5e509c0&oe=594112C4")
# Retailer.find(73).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/14079561_1288324887874585_1134378304185056188_n.jpg?oh=e7bf2f08501b1d750402ff1b28d20a89&oe=593C4485")
# Retailer.find(74).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/16640769_10155229174417345_776239135079160197_n.png?oh=877396994284e7f095ea53ba9143d0f1&oe=5925FF4D")
# Retailer.find(75).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/10307201_802115636475092_490373686428592212_n.jpg?oh=5287b6105bb585ad45ff1404929b501b&oe=593E2243")
# Retailer.find(76).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/199970_10150112831331332_8106819_n.jpg?oh=fc75f75061958e1ad7d955584e1d3352&oe=59265F1A")
# Retailer.find(77).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/14332929_10154636931867125_3874334784425159436_n.jpg?oh=36d98acdda0d868987557166b413d5f4&oe=592B244F")
# Retailer.find(78).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/268725_471992276159196_1895252255_n.jpg?oh=2e8f137a2f26246ab8f72cc6b3d85f82&oe=59346B4D")
# Retailer.find(79).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/404825_563138963699086_1423257932_n.jpg?oh=38b71577c790213ff40308e0e85ad3e0&oe=592D3267")
# Retailer.find(80).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/531019_355275971174754_1342105136_n.jpg?oh=271b705c6447678296ac930b7622a19d&oe=593DE703")
# Retailer.find(81).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/12742114_982610378488058_7682695389647823556_n.jpg?oh=19476b813e4a1661157bdb1c8c49978c&oe=59350D02")
# Retailer.find(82).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/554916_10151468968826460_301180219_n.jpg?oh=7a09dc1d8593fd5b4712fadcd8288379&oe=592B7A50")
# Retailer.find(83).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/485817_433104536727057_1012748694_n.jpg?oh=c3e01272ffca9223d16b79db18495539&oe=592A671A")
# Retailer.find(84).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/11029507_10153607309280962_1907277215857552641_n.jpg?oh=296a038472c6cf4f1bc904c109a3c99b&oe=593EFE1E")
# Retailer.find(85).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t31.0-8/13403981_1368009693215817_5893380578219972720_o.png?oh=56953272cbdc9e7e0a89a41ab546d0d3&oe=592DA276")
# Retailer.find(86).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/11148464_917992524930480_4518996256785385393_n.png?oh=00ac0c6ae4e5adb5ebb08182dc4ad54b&oe=5939012B")
# Retailer.find(87).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/10632568_764940360246491_2686447287691541667_n.jpg?oh=cc2e613256ee98d519a618645107a2fa&oe=59333452")
# Retailer.find(88).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/11164819_992090670802212_5724886522134481271_n.jpg?oh=4bbd2b5e4a79896b95f201c4c2d2490c&oe=593FAB73")
# Retailer.find(89).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/15541426_10154896681884479_2649012182918376100_n.jpg?oh=8373b998724cf88147d0f1e32bf2e113&oe=59275DB9")
# Retailer.find(90).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/12400627_10153494140707987_7571007312900704664_n.jpg?oh=e4827cca913ddb8fe408abf39694e524&oe=5926795B")
# Retailer.find(91).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/11051903_10153099560230535_6540603944979855847_n.png?oh=f83d6050c7fcb2892dcee92f4c2e319f&oe=596FD2AF")
# Retailer.find(92).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/10407427_567955263332856_8841499949114380314_n.jpg?oh=9d82d442ce820098c7fe2f57adba154e&oe=59400AFB")
# Retailer.find(93).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/14938129_10154159020388736_3656688024253882261_n.jpg?oh=b9f1091898460f7ad78ab45ae3695f22&oe=593FAA67")
# Retailer.find(94).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/11230850_1448086752168835_7324945032587191438_n.jpg?oh=631d4a3ca10cc6547be60922044a119f&oe=592E5999")
# Retailer.find(95).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/401235_449048265143061_1491855481_n.jpg?oh=57cd800ab7af5c2151eabfef987e18ee&oe=592AB4C1")
# Retailer.find(96).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t31.0-8/13329602_10153893912514550_8246963226914292635_o.png?oh=f514d31609ed92eb1f97580f27a46389&oe=59401A53")
# Retailer.find(97).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/10462764_10152323370343640_7797886725185484509_n.jpg?oh=ab8caae35b5fc3fc2b69c8ad58f9802a&oe=5927978E")
# Retailer.find(98).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t31.0-8/16797422_1257849827586199_2446925002097051872_o.jpg?oh=21cfd3258d35302e449672acbd72908e&oe=59369035")
# Retailer.find(99).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/487055_525583604127433_1133992442_n.jpg?oh=99711d076285ae31e98b6df4b816c37a&oe=592DB29E")
# Retailer.find(100).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/419037_10150670965799715_192143587_n.jpg?oh=53c6eceddaadb16501137ec9ea386c00&oe=593E535C")
# Retailer.find(101).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/10349139_10152414433290750_7991896073064658137_n.png?oh=5adaa85afe656a886dc6246a576bd0ba&oe=596E6931")
# Retailer.find(102).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/13912853_10153601830662827_4676063609366879908_n.jpg?oh=68d8322986764d4903f6c4598e104dc1&oe=592B6856")
# Retailer.find(103).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/995307_1354144224611333_3309478757668937133_n.jpg?oh=f0af85176e84eedb6a07ec994c790673&oe=59343CE4")
# Retailer.find(104).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/15036649_1491808130846740_8056058165146921082_n.jpg?oh=96f2a184e5f69ef74d183c5b26185cca&oe=596A4C26")
# Retailer.find(105).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t31.0-8/14566324_1093819034037272_7282356535859748382_o.png?oh=6c769bae1d5d8a5c5d3a2ad37f9055ff&oe=592833C5")
# Retailer.find(106).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/10846279_10154884723240344_2801447867830041289_n.jpg?oh=eb58238e9677d27747b1e2460616f4af&oe=5940743B")
# Retailer.find(107).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/167480_10151293281812313_704384526_n.jpg?oh=72c08a8f0673e9cd769416909df83926&oe=5925B1BC")
# Retailer.find(108).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/10635809_10152407474882804_7146622833979971356_n.jpg?oh=2233342f586cd335eec460cd9bd16549&oe=59339163")
# Retailer.find(109).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/1525277_10151909935410922_499914736_n.jpg?oh=5e024f031ce327cf8777234b10d15d13&oe=5973CA70")
# Retailer.find(110).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/14642203_1167782896637340_7664680379818840733_n.jpg?oh=1c541813a7e9ee60d48eb6d603b5c1fe&oe=597309CC")
# Retailer.find(111).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/575665_10151698178519077_1376598108_n.jpg?oh=efb0afa0a7642fb90b465f00fc83afbf&oe=59266A72")
# Retailer.find(112).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t31.0-8/1049218_10151306487272609_420498508_o.jpg?oh=ef8f8ba9871d94dfa130aec9c069dc6c&oe=592BD00C")
# Retailer.find(113).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/13445812_10153724861917219_6380313487866106543_n.jpg?oh=bda38a272359a0e3795af55cc8dbd494&oe=5925D525")
# Retailer.find(114).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/564323_10150665389973220_1647304216_n.jpg?oh=94c79c20ae7221eb49118994cac16c21&oe=592BE048")
# Retailer.find(115).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t31.0-8/14242322_1233588193358284_423074108445117884_o.png?oh=1192bca545d503f96175cd9bb9b24fb8&oe=596C457A")
# Retailer.find(116).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/393649_252819054772402_1498724092_n.jpg?oh=171aeafe252bb4c8796bed3cff65d513&oe=592F0A10")
# Retailer.find(117).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/16681990_10154196278457377_5850603146667314290_n.png?oh=8f607d7a8b35289cf5d128c16325ce5d&oe=59736FC8")
# Retailer.find(118).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/10487309_10152610386221882_4883718145484808472_n.jpg?oh=c25396d088002caac897d02946396097&oe=5927594E")
# Retailer.find(119).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/644295_671103166250346_1203292090_n.png?oh=778682e9251899aa711fa2d6135069e8&oe=592DF63A")
# Retailer.find(120).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/15350505_10154009366600841_6612965927961628840_n.jpg?oh=a60ef4c852fab1d6660e46560e0a8740&oe=596B72B8")
# Retailer.find(121).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t31.0-8/11539008_10153309981111655_5737282329315016306_o.jpg?oh=32bd11ac456aed6312305fbc47fe655c&oe=592D59D1")
# Retailer.find(122).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/10663_612802955404665_1733498570_n.jpg?oh=11295be0e7c1261edafdf88e219ce1c2&oe=593317B6")
# Retailer.find(123).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/10292530_828236983904052_2313875589616299665_n.png?oh=607af5b02ad6b6ced254e10a9a8ed78e&oe=5941B4FC")
# Retailer.find(124).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/12122399_10153815485259258_1682153248355545624_n.jpg?oh=18f449d7ec759b8a29a7ef37c3119ace&oe=592DFC18")
# Retailer.find(125).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/561009_272121762909694_803745397_n.jpg?oh=18e37b5265bcdcc9b89b497a4086b821&oe=5929C6F0")
# Retailer.find(126).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/11062713_10153468359330289_6749943055509790451_n.jpg?oh=7740f6e144848e72d8a832b81e0a9844&oe=5938296A")
# Retailer.find(127).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/1524864_10152441826600166_1073871088_n.jpg?oh=432530e99d4191514459cecef6280a1e&oe=59367190")
# Retailer.find(160).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t31.0-8/1504174_10152194391939369_674348577_o.jpg?oh=68df159c8bcd540646c2a2b0d8eb31c2&oe=592BE8DC")
# Retailer.find(128).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/1780752_627646763975073_1195634262_n.png?oh=4bf9adb3ce7467452708919c9d0466f7&oe=592C2B1D")
# Retailer.find(129).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/13327449_1293911423969716_8832260599192012162_n.png?oh=a4da7c236fb04e694026f2e517e55b13&oe=593AE815")
# Retailer.find(130).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/1450876_10153457414155722_687685882_n.jpg?oh=77c90808e8e12dea200cebcbd7fc833b&oe=592A75EB")
# Retailer.find(131).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/10439498_10152242072418981_7347559404997344426_n.jpg?oh=712b13feff1cd010127acf18f7dc0444&oe=592BD602")
# Retailer.find(132).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t31.0-8/13064739_1110842888935952_227785740605232379_o.jpg?oh=24359ffa277edaaf30aa8b061b5327c2&oe=593BFA70")
# Retailer.find(133).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/12346466_1089269691097147_8949091668344652366_n.jpg?oh=9570689a07cc7ddd7c1ff823dca33a30&oe=593A6F5D")
# Retailer.find(134).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/1235157_591647360894810_1254374370_n.jpg?oh=db6b7c4baff18b7d393232173390c2bb&oe=592D0B16")
# Retailer.find(135).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/10957345_862929413729918_1772246657428399966_n.jpg?oh=5330311483e5310af70826cbac01eb48&oe=59334132")
# Retailer.find(136).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/14492484_1382670715084013_791402837860006374_n.jpg?oh=f71cbbf282690b338320800cd3626332&oe=592F37CC")
# Retailer.find(137).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/533656_10151147361539537_851503393_n.jpg?oh=945669d16aaf1e7e81d5de54d10373e9&oe=592F840D")
# Retailer.find(138).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/960188_530970636999534_774906009_n.png?oh=0f1daaaa802d7e6bc18d102813dcfe36&oe=596A732D")
# Retailer.find(139).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/10849894_492296060910226_2491109429709989872_n.jpg?oh=df471d7418b2114be132ff16100b9a56&oe=593A3B0C")
# Retailer.find(140).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/11038397_10153069477117110_8867447078952657026_n.jpg?oh=8ff3a21613e9c94867290044695c5b7f&oe=596EDE0A")
# Retailer.find(141).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/10985438_10153590251591133_3502678427640266307_n.jpg?oh=c43636157bebe1b64c613475ba32b43f&oe=593BA2D6")
# Retailer.find(142).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/12512585_10153300641537647_94134331487232347_n.jpg?oh=b5ca8d3be5a7a8529fd5ffdfd4ca05c0&oe=593B2BE0")
# Retailer.find(143).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t31.0-8/12309672_10153222713830814_2412977972485272392_o.jpg?oh=ab51d96903a497410df09e45321af62b&oe=596CA0B1")
# Retailer.find(144).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/10568914_10153394627104071_9169527627229596016_n.jpg?oh=f20da9c103b9c68ecfdebb51447c388d&oe=59307333")
# Retailer.find(145).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/74344_10151180796941752_72646076_n.jpg?oh=6cbc64b160026bd54488fa9b203fdec2&oe=5928DCD9")
# Retailer.find(146).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/10616703_786637474708089_3444370450492558377_n.png?oh=04fddab26cb8d3cd979fae3e90fdd619&oe=593965A7")
# Retailer.find(147).update_attributes(remote_logo_url: "https://instagram.ftxl1-1.fna.fbcdn.net/t51.2885-15/s320x320/e35/16229355_1711091772516198_3820645964121636864_n.jpg")
# Retailer.find(148).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/1620556_10152132750302512_64928293_n.jpg?oh=1ba4bfeb940c237b59d8a0ac17507d00&oe=5940A710")
# Retailer.find(149).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/384355_420439104680446_830677079_n.jpg?oh=7534e0fbf51dc41ffb3b32ae327f6bad&oe=5940250D")
# Retailer.find(150).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/1186047_10151557775236502_2032074238_n.jpg?oh=189917fa5c9b707dc5d0d28129afdc1b&oe=593AA61D")
# Retailer.find(151).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/10423963_731482030229001_5685194687836042656_n.jpg?oh=34e406e0e2f1cb72cbc875db18000476&oe=593DA22E")
# Retailer.find(152).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/1474368_478815295579398_261823040_n.jpg?oh=ba23621952a2016355b73583df2b49f5&oe=5937C187")
# Retailer.find(153).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/14907093_10153758105186486_1792850071080441424_n.jpg?oh=440360cfb60f4dc45d75019b6110e471&oe=59295E10")
# Retailer.find(154).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/375613_10150633170986868_1394474539_n.jpg?oh=f7f224a84051fcaa8665e11567b7e586&oe=596E1DD7")
# Retailer.find(155).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/13707652_1327705587243911_738193101666094759_n.jpg?oh=d4fc307d1dcb20a50a3aca24275c6199&oe=592E5B0A")
# Retailer.find(156).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/11846791_10155983716120046_40705523039448260_n.jpg?oh=d9b94cb145b92b29eb357f9ecd081cfc&oe=592D4E86")
# Retailer.find(157).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t31.0-8/12440567_10153263145419149_4721264429600692043_o.png?oh=dfef142c99a05e1c69609dddc444a224&oe=5928DFFB")
# Retailer.find(158).update_attributes(remote_logo_url: "https://instagram.ftxl1-1.fna.fbcdn.net/t51.2885-19/10598283_648326688615396_26338871_a.jpg")
# Retailer.find(159).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/14202751_10154604145684416_6079569821795202704_n.jpg?oh=0d26f0b10373ba464216a67777b2f99f&oe=593FA8B8")
# Retailer.find(161).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/577276_10151746951307936_99728779_n.png?oh=b7c23386418b0d21faaf898235b401ec&oe=592A8C11")
# Retailer.find(162).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/10945653_10152671547446395_2852012297600564023_n.jpg?oh=52179ec9ab85111b80e5739b6a3d20f4&oe=592F3C71")
# Retailer.find(163).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/13879442_1679911132332290_363865383155097654_n.jpg?oh=92e9f67495427d8026f50c1a86cc61e7&oe=592E67B2")
# Retailer.find(164).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t31.0-8/12022597_10153347917033101_4105366575141695471_o.jpg?oh=8f853d1120891726cd1f1c3227403a90&oe=596BE45F")
# Retailer.find(165).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/17021449_10158243894990247_6661737566071755883_n.png?oh=b12a8b7c9ba1ac22f938dc5df085398f&oe=593212B1")
# Retailer.find(166).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/11330000_10152961673561801_3776332498279843233_n.png?oh=bcb22df903fa7e582ecb6c53e7558519&oe=59315AEA")
# Retailer.find(167).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/13177929_1007412172675192_7107008451427059423_n.jpg?oh=d8714f832f8aa156bcdef80ae617fe5f&oe=593D6A4C")
# Retailer.find(168).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/12592671_672203499587873_5865328264335838525_n.jpg?oh=8bed10535cd1e39fc47aae2780bc704d&oe=5928BE69")
# Retailer.find(169).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/10942319_10152726834209891_7704001778956293901_n.jpg?oh=23871d7d2a5488e9761a5d3340e1c3c6&oe=592EA6F1")
# Retailer.find(170).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/148612_175556199122163_3921809_n.jpg?oh=746ec628b240ac8a1ae177ee5b4cf3e2&oe=5932FFBA")
# Retailer.find(171).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/155578_177595952252037_1384381_n.jpg?oh=3a0d7df94e24a4834a753fbc2b56aafd&oe=5931926A")
# Retailer.find(172).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/27973_118829518146843_4680386_n.jpg?oh=da3e16d641f25ec2b7df6f9fb9c34f20&oe=59352ED2")
# Retailer.find(173).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/375574_10150973121745669_1986368076_n.jpg?oh=e4b03ed2e6aba66e2d01e227b5a59ff6&oe=5931932F")
# Retailer.find(174).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/4156_92887491555_873191_n.jpg?oh=d8d892eca26e9b2735aa508ff48cb821&oe=593153C2")
# Retailer.find(175).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/10250070_10152379344937626_408286292685118074_n.jpg?oh=684a7d3fa5b09cf31f9858017590b2ab&oe=5931778D")
# Retailer.find(176).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t31.0-8/15895816_10154628773851558_5764513835589726477_o.jpg?oh=7a2f23ade3e81121251042a74333152c&oe=5925B5A8")
# Retailer.find(177).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/13900165_10154066170583778_3896098509593603286_n.png?oh=8357b112d29d027c8727c437b314917b&oe=596E7118")
# Retailer.find(178).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/12369160_10152744491757706_684853374815748194_n.png?oh=15fe074031d693e82ba8aed698e12abf&oe=5970F97B")
# Retailer.find(179).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/1382094_605871406123510_393895428_n.jpg?oh=a7b18d4d1237b9a843eb61594bba4250&oe=5937D57F")
# Retailer.find(180).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/1508587_820699107993374_1801260244833533803_n.png?oh=99223269c5ebe944694dd7a0d5d453e6&oe=593D95FC")
# Retailer.find(181).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t31.0-8/883111_563422473707033_167532535_o.jpg?oh=391e369a9154fe746a9fce3b77cd4ee2&oe=5971C223")
# Retailer.find(182).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/1609888_729887257029154_13535502_n.png?oh=92c8236bcb8c560b657a47197b209d44&oe=59309D29")
# Retailer.find(183).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/10574235_801058429934566_50005053981180763_n.jpg?oh=00c005e30162e760d6c5f4cca45d61f2&oe=59306FDE")
# Retailer.find(184).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/1477442_701573326533741_1433882516_n.jpg?oh=cb78d61a9799c1faa728a1c797936cf9&oe=592DC83F")
# Retailer.find(185).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/1240407_292902017575134_7572095206710112988_n.png?oh=5ca3933aac2b464e6623007cbff85eae&oe=593D0F4F")
# Retailer.find(186).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t31.0-8/12487158_1022873931118815_2000432398932127217_o.jpg?oh=fc81cf494166fba38698fddc47d95dd7&oe=592DD48E")
# Retailer.find(187).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/428607_10150573721961960_725629741_n.jpg?oh=5f4d0df90777314d3579320431b9b90e&oe=5936ACAA")
# Retailer.find(188).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/13932707_1136896863023550_3898449970252001281_n.jpg?oh=332174554633d7f457ceaea396aba55f&oe=593356A5")
# Retailer.find(189).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/13920944_1226150044084745_6802691961989556019_n.jpg?oh=2def9b8765eb6c7629552496e16730a9&oe=5927BB6F")
# Retailer.find(190).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/1972413_10152239338541880_1041618031_n.jpg?oh=fbb6ce3b683a28accd9dbbe8cce295c7&oe=592F32FC")
# Retailer.find(191).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/11224312_527941820688474_7608623155147271211_n.jpg?oh=0c1126bae485265fffe11252a3899de3&oe=5969ECA2")
# Retailer.find(192).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/13521949_10154226433677359_6855506997175736711_n.jpg?oh=66e9935a2b13d4915a0fea8535b8c3fd&oe=5931A9D9")
# Retailer.find(193).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/10302021_938354772920997_3104045185892159889_n.png?oh=6829bcf8d4b870819bf00219fd646c1d&oe=592669DD")
# Retailer.find(194).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/11219577_1824352971124349_3719215815679081164_n.jpg?oh=84dce08862ea1f63c4e964b9e35b3fdf&oe=5934845D")
# Retailer.find(195).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/10401381_749193785118700_2069366442216591132_n.jpg?oh=2b773bd75d8ad41393fe90483ebb3063&oe=596F5B80")
# Retailer.find(196).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/428165_10150869907622796_109374865_n.jpg?oh=42267f8a45aaf30dfce062ee303d0cfe&oe=596A1C11")
# Retailer.find(197).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/15741049_10154136833006863_32918966534652652_n.png?oh=68eb7d078bda59c71d556bee10c8d4b2&oe=596A8977")
# Retailer.find(198).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/10494723_10153783894064029_1422031426230796885_n.jpg?oh=c12465a72f97f61dde968b7b5b2f2ba2&oe=596FF81B")
# Retailer.find(199).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/13494940_10154181043206287_1083285802424653344_n.jpg?oh=b25a3144082dbd5fa9d99cd9f049aef9&oe=596C728D")
# Retailer.find(200).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/11267873_10152989745282149_332773097334521548_n.jpg?oh=29fe4651c512e8bee7dc75015d818788&oe=592E919D")
# Retailer.find(201).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/12552556_10153257463450825_1865531355145061710_n.jpg?oh=4067a55ef60ad1fc1b53bdac6ce9c202&oe=593AA8ED")
# Retailer.find(202).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/13432264_1131663743521616_8313488881065247490_n.jpg?oh=82bfb2f52f07f243d5f0252a2976be84&oe=5925D9A7")
# Retailer.find(203).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/431721_10150586110364022_1379493957_n.jpg?oh=374d17cba67c037ed6f4317b6155a3ab&oe=59737103")
# Retailer.find(204).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/11147195_10154229661388776_6389002393906641697_n.jpg?oh=8b086e3c736edc28e7442944dee524cf&oe=5971F374")
# Retailer.find(205).update_attributes(remote_logo_url: "https://scontent.ftxl1-1.fna.fbcdn.net/v/t1.0-9/10346388_10152429604038129_6624755631804816885_n.jpg?oh=437b0948ce654f52e6230dc35baad751&oe=5926C096")



