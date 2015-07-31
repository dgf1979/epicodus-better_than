bridge_category = Category.create({ name: "PDX Bridges", image_url: 'https://upload.wikimedia.org/wikipedia/commons/5/54/Black_River_Bridge,_Spanning_Black_River_at_U.S._Highway_67,_Pocahontas_(Randolph_County,_Arkansas).jpg' })
bridges = ['Morrison', 'Steel', 'Burnside', 'Broadway', 'Hawthorne', 'St Johns', 'Fremont', 'Sellwood']
bridges.each do |bridge|
  bridge_category.items.create({ name: bridge, rank: rand(90..110) })
end

food_cart_category = Category.create({ name: "Food Carts", image_url: 'https://farm4.staticflickr.com/3822/9250736379_5150a61de8_o_d.jpg' })
food_carts = ['The Frying Scottsman', '808 Grinds', 'Guero', 'Viking Soul Food', "Cackalack's Hot Chicken Shack", "Potato Chmapion", "Fried Eggs I'm In Love", "Pyro Pizza" ]
food_carts.each do |food_cart|
  food_cart_category.items.create({ name: food_cart, rank: rand(90..110) })
end

brewery_category = Category.create({ name: "Local Brewery", image_url: 'https://farm4.staticflickr.com/3159/2575137078_3152cafa48_o_d.jpg'  })
breweries = ['Deschutes', 'Burnside', 'Cascade', 'Hopworks', 'Breakside', 'Laurelwood', 'Base Camp', 'Rock Bottom', 'Gigantic']
breweries.each do |brewery|
  brewery_category.items.create({ name: brewery, rank: rand(90..110) })
end

theater_category = Category.create({ name: "Movie Theater", image_url: 'https://c2.staticflickr.com/8/7467/16048925897_f6eaa38b7a_b.jpg'  })
theaters = ['Hollywood', 'Laurelhurst', 'Cinema 21', 'Bagdad', 'Kennedy School', 'Regal Fox Tower', 'Living Room', 'Mission']
theaters.each do |theater|
  theater_category.items.create({ name: theater, rank: rand(90..110) })
end

movie_category = Category.create({ name: "Movie of 2015", image_url: 'https://c2.staticflickr.com/8/7467/16048925897_f6eaa38b7a_b.jpg'  })
movies = ['Mad Max: Fury Road', 'Jurassic World', 'Avengers: Age of Ultron', 'Furious 7', 'Ex Machina', 'Magic Mike XXL', 'Pitch Perfect 2']
movies.each do |movie|
  movie_category.items.create({ name: movie, rank: rand(90..110) })
end

movie_category = Category.create({ name: "Science Fiction Movie of All Time", image_url: 'http://upload.wikimedia.org/wikipedia/commons/7/7d/The_Computer_Museum,_Boston,_Robot_Theater.jpg' })
movies = ['Mad Max: Fury Road', 'Star Wars: The Empire Strikes Back', 'Alien', 'Aliens', 'Ex Machina', 'Blade Runner', 'Terminator 2', 'Robocop']
movies.each do |movie|
  movie_category.items.create({ name: movie, rank: rand(90..110) })
end

default_admin = Auth.create({ email: 'admin@site.com', password: 'password' })
default_admin.user.update({ admin: true })
