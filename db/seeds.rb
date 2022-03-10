# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require "uri"
puts "cleaning db"
Review.destroy_all
User.destroy_all
Event.destroy_all
Chatroom.destroy_all
puts "Database clean"

puts "creating users"
kubi = User.create(username: "kubi_g", email: "kubigdogan@gmail.com", password: "password", typeofuser: false, name: "Kubilay Dogan")
file = URI.open('https://res.cloudinary.com/dk3fbg9zm/image/upload/v1646408783/profilepic_o5lvao.jpg')
kubi.avatar.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
carolin = User.create(username: "carolins", email: "carolins@gmail.com", password: "password", typeofuser: false, name: "Carolin Donata Schmidt")
file = URI.open('https://res.cloudinary.com/dk3fbg9zm/image/upload/v1646408063/carolin_evbwcg.jpg')
carolin.avatar.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
david = User.create(username: "davidm", email: "davidm@gmail.com", password: "password", typeofuser: false, name: "David McGroarty-Manley")
file = URI.open('https://res.cloudinary.com/dk3fbg9zm/image/upload/v1646408063/david_bjvlgj.jpg')
david.avatar.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
emma = User.create(username: "emmac", email: "emmac@gmail.com", password: "password", typeofuser: false, name: "Emma Cheng")
file = URI.open('https://res.cloudinary.com/dk3fbg9zm/image/upload/v1646408064/emma_g4imoi.jpg')
emma.avatar.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

puts "creating chefs"

kubi2 = User.create(username: "chef_kubi", email: "kubigdogan@hotmail.com", password: "password", typeofuser: true, name: "Kubi D", cuisine: "Bread Street Kitchen", price: 3, address: "Northcote Rd, Langho, Blackburn BB6 8BE, United Kingdom", longitude: "53.80990428715672", latitude: "-2.4470293809563266", bio: "I draw inspiration from the beautiful Ribble Valley landscape to produce stunning dishes which showcase the wide range of incredible produce the region has to offer." )
file = URI.open('https://res.cloudinary.com/dk3fbg9zm/image/upload/v1646408783/profilepic_o5lvao.jpg')
kubi2.avatar.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
carolin2 = User.create(username: "chef_carolin", email: "carolins@hotmail.com", password: "password", typeofuser: true, name: "Carolin S", cuisine: "Jamie's Italian", price: 2, address: "16 Rue de la Cr des Aides, 33000 Bordeaux, France", longitude: "44.83337938020759", latitude: "-0.5708682883575964", bio: "I carefully select my suppliers and ingredients to offer you a rich and authentic menu from the region" )
file = URI.open('https://res.cloudinary.com/dk3fbg9zm/image/upload/v1646408063/carolin_evbwcg.jpg')
carolin2.avatar.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
david2 = User.create(username: "chef_david", email: "davidm@hotmail.com", password: "password", typeofuser: true, name: "David McGroarty-Manley ", cuisine: "Soho House", price: 1, address: "92 Kensington Park Rd, London W11 2PN, United Kingdom", longitude: "51.51324223258976", latitude: "-0.2027338195841721", bio: "I am the Chef Patron of Core by David McGroarty-Manley which opened in 2017. Previously I was Chef Patron at Restaurant Gordon Ramsay from 2012 to 2016." )
file = URI.open('https://res.cloudinary.com/dk3fbg9zm/image/upload/v1646408063/david_bjvlgj.jpg')
david2.avatar.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
emma2 = User.create(username: "chef_emma", email: "emmac@hotmail.com", password: "password", typeofuser: true, name: "Emma Cheng", cuisine: "The Ledbury", price: 2, address: "Oude Waal 40, 1011 CE, Amsterdam, the Netherlands", longitude: "52.3724081867893", latitude: "4.905130155947044", bio: "I believe the origin of the ingredients tells me something about the taste of that ingredient, and contributes to a better-balanced nature in the long term. I mostly buy from organic farmers in the region because their sustainable way of working benefits the taste and nutritional value of the products they produce." )
file = URI.open('https://res.cloudinary.com/dk3fbg9zm/image/upload/v1646408064/emma_g4imoi.jpg')
emma2.avatar.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
ain = User.create(username: "ains_h", email: "ainsleyh@hotmail.com", password: "password", typeofuser: true, name: "Ainsley Harriot", cuisine: "TV Chef", price: 2, address: "Oude Waal 40, 1011 CE, Amsterdam, the Netherlands", longitude: "52.3724081867893", latitude: "4.905130155947044", bio: " The legend from Ready Steady Cook" )
file = URI.open('https://res.cloudinary.com/dk3fbg9zm/image/upload/v1646739562/Ainsley_Harriott_nf10tu.webp')
ainsley.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

reviewees = [kubi2, carolin2, david2, emma2]

puts "creating resumes"

Resume.create(user: kubi2, experience: "Le Cordon Bleu", title: "training", location: "France", start_date: "14/09/2009", end_date: "14/09/2011")
Resume.create(user: kubi2, experience: "Restaurant Name", title: "Head Chef", location: "United Kingdom", start_date: "14/09/2009", end_date: "14/09/2011")
Resume.create(user: carolin2, experience: "Leiths School of Food and Wine", title: "training", location: "United Kingdom", start_date: "14/09/2009", end_date: "14/09/2011")
Resume.create(user: carolin2, experience: "LouLou", title: "Commis Chef", location: "France", start_date: "14/09/2009", end_date: "14/09/2011")
Resume.create(user: david2, experience: "Selftaught", title: "training", location: "United Kingdom", start_date: "14/09/2009", end_date: "14/09/2011")
Resume.create(user: david2, experience: "Restaurant Name", title: "Chef de Partie - Pastry", location: "United Kingdom", start_date: "14/09/2009", end_date: "14/09/2011")
Resume.create(user: emma2, experience: "Institute of Culinary Education", title: "United States", location: "United States", start_date: "14/09/2009", end_date: "14/09/2011")
Resume.create(user: emma2, experience: "Restaurant Name", title: "Sous Chef", location: "the Netherlands", start_date: "14/09/2009", end_date: "14/09/2011")

puts "created users and chefs"

ainsley = Chatroom.create(name: "Ainsley Harriot")
file = URI.open('https://res.cloudinary.com/dk3fbg9zm/image/upload/v1646739562/Ainsley_Harriott_nf10tu.webp')
ainsley.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
sorrel = Chatroom.create(name: "Sorrel-Moseley-Williams")
file = URI.open('https://res.cloudinary.com/dk3fbg9zm/image/upload/v1646739562/Sorrel-Moseley-Williams_bvlk3d.webp')
sorrel.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
gordon = Chatroom.create(name: "Gordon Ramsay")
file = URI.open('https://res.cloudinary.com/dk3fbg9zm/image/upload/v1646739562/Gordon-Ramsay_reznug.webp')
gordon.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
kristen = Chatroom.create(name: "Kristen Hawley")
file = URI.open('https://res.cloudinary.com/dk3fbg9zm/image/upload/v1646739562/Kristen_Hawley_1_pzph37.webp')
kristen.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

puts "created chatrooms"

4.times do |i|
  Review.create!(reviewee_id: reviewees[i - 1].id, reviewer_id: kubi.id, comment: Faker::Restaurant.review, rating: rand(3..5))
  Review.create!(reviewee_id: reviewees[i - 1].id, reviewer_id: carolin.id, comment: Faker::Restaurant.review, rating: rand(3..5))
  Review.create!(reviewee_id: reviewees[i - 1].id, reviewer_id: david.id, comment: Faker::Restaurant.review, rating: rand(3..5))
  Review.create!(reviewee_id: reviewees[i - 1].id, reviewer_id: emma.id, comment: Faker::Restaurant.review, rating: rand(3..5))
end

puts "created reviews"
