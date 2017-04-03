# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.destroy_all
clothing_category = Category.create(name: "Clothing")
shoes_category = Category.create(name: "Shoes")
accessory_category = Category.create(name: "Accessories")
beauty_category = Category.create(name: 'Beauty & Grooming')
sports_category = Category.create(name: 'Sports')

men = Gender.where(name: "men").first
women = Gender.where(name: "women").first

clothing_category.gender_ids = [1, 2]
shoes_category.gender_ids = [1, 2]
accessory_category.gender_ids = [1, 2]
beauty_category.gender_ids = [1, 2]
sports_category.gender_ids = [1, 2]