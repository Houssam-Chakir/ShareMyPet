# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Destroying database
puts 'destroying data base!'
# Animal.destroy
puts 'done'

puts 'creating user 1'
user = User.create(first_name: 'Houssam', last_name: 'Chakir')
puts 'done'

puts 'adding animals'
10.times do
  animal = Animal.create(
    name: Faker::Creature::Animal.name,
    category: Faker::Creature::Dog.breed,
    specie: Faker::Creature::Dog.meme_phrase,
    bio: Faker::Creature::Dog.sound,
    age: Faker::Creature::Dog.age,
    price_hour: 1)
  puts "added #{animal.name} to make someone happy"
end
puts 'done'
