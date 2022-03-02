
require "uri"
puts "cleaning db"
User.destroy_all
puts "Database clean"

puts "creating users"
kubi = User.create(username: "kubi_g", email: "kubigdogan@gmail.com", password: "password", typeofuser: false)
carolin = User.create(username: "carolins", email: "carolins@gmail.com", password: "password", typeofuser: false)
david = User.create(username: "davidm", email: "davidm@gmail.com", password: "password", typeofuser: false)
emma = User.create(username: "emmac", email: "emmac@gmail.com", password: "password", typeofuser: false)

puts "creating chefs"

kubi2 = User.create(username: "chef_kubi", email: "kubigdogan@hotmail.com", password: "password", typeofuser: true, name: "Kubilay Dogan", cuisine: "Austrian", price: 3, address: "Northcote Rd, Langho, Blackburn BB6 8BE, United Kingdom", longitude: "53.80990428715672", latitude: "-2.4470293809563266", bio: "Kubilay Dogan has been nominated one of the most innovative and exciting chefs in the UK today. Leading the kitchen brigade at Northcote since the age of 23 and a regular face on Britain’s tv screens, I draw inspiration from the beautiful Ribble Valley landscape to produce stunning dishes which showcase the wide range of incredible produce the region has to offer." )
carolin2 = User.create(username: "chef_carolin", email: "carolins@hotmail.com", password: "password", typeofuser: true, name: "Carolin Donata Schmidt", cuisine: "French", price: 2, address: "16 Rue de la Cr des Aides, 33000 Bordeaux, France", longitude: "44.83337938020759", latitude: "-0.5708682883575964", bio: "I attach great importance to working with the right suppliers and ingredients. I carefully select each of them to offer you a rich and authentic menu from the region" )
david2 = User.create(username: "chef_david", email: "davidm@hotmail.com", password: "password", typeofuser: true, name: "David McGroarty-Manley", cuisine: "Italian", price: 1, address: "92 Kensington Park Rd, London W11 2PN, United Kingdom", longitude: "51.51324223258976", latitude: "-0.2027338195841721", bio: "A Northern Irish chef. I am the Chef Patron of Core by David McGroarty-Manley which opened in 2017. Previously I was Chef Patron at Restaurant Gordon Ramsay from 2012 to 2016, won the Chef of the Year award in 2013, and achieved a perfect score in the 2015 edition of the Good Food Guide." )
emma2 = User.create(username: "chef_emma", email: "emmac@hotmail.com", password: "password", typeofuser: true, name: "Emma Chen", cuisine: "British", price: 2, address: "Oude Waal 40, 1011 CE, Amsterdam, the Netherlands", longitude: "52.3724081867893", latitude: "4.905130155947044", bio: "I attach great importance to the origin of my ingredients. It tells me something about the taste of that ingredient, and contributes to a better-balanced nature in the long term. I mostly buy from organic farmers in the region because their sustainable way of working benefits the taste and nutritional value of the products they produce. Products which I can’t buy locally, I purchase based on equivalence and great taste. The Heavenly Chocolate dessert, for example, is a 100% fair-trade treat." )

puts "created users and chefs"
