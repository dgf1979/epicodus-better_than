# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

bridge_category = Category.create({ name: "PDX Bridges" })
bridges = ['Morrison', 'Steel', 'Burnside', 'Broadway', 'Hawthorne']
bridges.each do |bridge|
  bridge_category.items.create({ name: bridge })
end

food_cart_category = Category.create({ name: "Food Carts" })
food_carts = ['The Frying Scottsman', '808 Grinds', 'Guero', 'Viking Soul Food', "Cackalack's Hot Chicken Shack" ]
food_carts.each do |food_cart|
  food_cart_category.items.create({ name: food_cart })
end
