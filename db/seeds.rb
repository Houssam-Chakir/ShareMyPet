# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
# Destroying database
puts 'destroying data base!'
# Animal.destroy_all
# User.destroy_all
puts 'done'

# puts 'creating user 1'
# 12.times do
#   user = User.create!(first_name: Faker::Creature::Animal.name,
#     last_name: Faker::Creature::Animal.name,
#     email: Faker::Internet.email,
#     password: Faker::Internet.password)
# end
# puts 'done'

# puts 'adding animals'
# 10.times do
#   count = 1
#   animal = Animal.create!(
#     name: Faker::Creature::Animal.name,
#     category: Faker::Creature::Dog.breed,
#     specie: Faker::Creature::Dog.meme_phrase,
#     bio: Faker::Creature::Dog.sound,
#     age: Faker::Creature::Dog.age,
#     price_hour: 1,
#     user_id: count)
#   puts "added #{animal.name} to make someone happy"
#   count += 1
# end
# puts 'done'

User.create!(first_name: "Yassine", last_name: "Jonny", email: "test1@gmail.com", password: "123456", address: "Paris", phone_number: "0606060606", description: "Je suis Yassine")
User.create!(first_name: "Houssam", last_name: "Jonny", email: "test2@gmail.com", password: "123457", address: "Paris", phone_number: "0606060607", description: "Je suis Houssam")
User.create!(first_name: "Amal", last_name: "Jonny", email: "test3@gmail.com", password: "123458", address: "Paris", phone_number: "0606060608", description: "Je suis Amal")
User.create!(first_name: "Jihane", last_name: "Jonny", email: "test4@gmail.com", password: "123459", address: "Paris", phone_number: "0606060609", description: "Je suis Jihane")
puts 'user created'
Animal.create!(name: "Jonny", category: "Felid ", specie: "Lion", bio: "I am a lion", age: 5, price_hour: 1, user_id: 1, image: "https://images.unsplash.com/photo-1585468274952-66591eb14165?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1032&q=80", address:"16 Rue de la Faisanderie Paris")
Animal.create!(name: "Wendy", category: "Dog", specie: "Boxer", bio: "I am a boxer", age: 5, price_hour: 1, user_id: 2, image: "https://images.unsplash.com/photo-1558349699-1e1c38c05eeb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80", address:"22 Rue de la Faisanderie Paris")
Animal.create!(name: "Alexa", category: "Cat", specie: "Sphynx", bio: "I am a Sphynx", age: 5, price_hour: 1, user_id: 3, image: "https://www.ipnoze.com/wordpress/wp-content/uploads/2020/04/chat-avec-plis-sphynx-xherdan-005.jpg", address:"14 Rue de la Faisanderie Paris")
Animal.create!(name: "Echo", category: "Unicorn", specie: "Unicorn", bio: "I am a Unicorn", age: 5, price_hour: 1, user_id: 4, image: "https://www.neozone.org/blog/wp-content/uploads/2021/04/licorne-780x470.jpg", address:"2 Rue de la Faisanderie Paris")
Animal.create!(name: "Tango", category: "Batrachian", specie: "frog", bio: "I am a frog", age: 5, price_hour: 1, user_id: 4, image: "https://cdns-images.dzcdn.net/images/artist/68f1b025d3f2f412e09d3a3a27f904db/500x500.jpg", address:"35 Rue de la Faisanderie Paris")
Animal.create!(name: "Charly", category: "Dinosaure", specie: "T-rex", bio: "I am a T-rex", age: 5, price_hour: 1, user_id: 4, image: "https://www.dino-zoo.com/templates/yootheme/cache/Tyrannosaurus-rex-92078de0.png", address:"10 Rue de la Faisanderie Paris")
Animal.create!(name: "Bravo", category: "Tarsiidae", specie: "Tarsier", bio: "I am a Tarsier", age: 5, price_hour: 1, user_id: 4, image: "https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/Tarsier-GG.jpg/800px-Tarsier-GG.jpg", address:"5 Rue de la Faisanderie Paris")
Animal.create!(name: "Gamma", category: "Pholidota", specie: "Pangolin", bio: "I am a Panglolin", age: 5, price_hour: 1, user_id: 4, image: "https://share.america.gov/wp-content/uploads/2016/01/AP_2392588480161.jpg", address:"28 Rue de la Faisanderie Paris")
Animal.create!(name: "Tommy", category: "Camelid", specie: "Llama", bio: "I am a Llama", age: 5, price_hour: 1, user_id: 4, image: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/cf/Lama%2C_Chinchero.jpg/170px-Lama%2C_Chinchero.jpg", address:"9 Rue de la Faisanderie Paris")
Animal.create!(name: "Sophie", category: "Folivora", specie: "Sloth", bio: "I am a Sloth", age: 5, price_hour: 1, user_id: 4, image: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/be/Bicho-pregui%C3%A7a_3.jpg/1024px-Bicho-pregui%C3%A7a_3.jpg", address:"30 Rue de la Faisanderie Paris")
puts 'animal created'
