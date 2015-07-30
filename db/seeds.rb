bridge_category = Category.create({ name: "PDX Bridges" })
bridges = ['Morrison', 'Steel', 'Burnside', 'Broadway', 'Hawthorne', 'St Johns', 'Fremont', 'Sellwood']
bridges.each do |bridge|
  bridge_category.items.create({ name: bridge, rank: rand(90..110) })
end

food_cart_category = Category.create({ name: "Food Carts" })
food_carts = ['The Frying Scottsman', '808 Grinds', 'Guero', 'Viking Soul Food', "Cackalack's Hot Chicken Shack", "Potato Chmapion", "Fried Eggs I'm In Love", "Pyro Pizza" ]
food_carts.each do |food_cart|
  food_cart_category.items.create({ name: food_cart, rank: rand(90..110) })
end

brewery_category = Category.create({ name: "Local Brewery" })
breweries = ['Deschutes', 'Burnside', 'Cascade', 'Hopworks', 'Breakside', 'Laurelwood', 'Base Camp', 'Rock Bottom', 'Gigantic']
breweries.each do |brewery|
  brewery_category.items.create({ name: brewery, rank: rand(90..110) })
end

theater_category = Category.create({ name: "Movie Theater" })
theaters = ['Hollywood', 'Laurelhurst', 'Cinema 21', 'Bagdad', 'Kennedy School', 'Regal Fox Tower', 'Living Room', 'Mission']
theaters.each do |theater|
  theater_category.items.create({ name: theater, rank: rand(90..110) })
end

movie_category = Category.create({ name: "Movie of 2015" })
movies = ['Mad Max: Fury Road', 'Jurassic World', 'Avengers: Age of Ultron', 'Furious 7', 'Ex Machina', 'Magic Mike XXL', 'Pitch Perfect 2']
movies.each do |movie|
  movie_category.items.create({ name: movie, rank: rand(90..110) })
end
