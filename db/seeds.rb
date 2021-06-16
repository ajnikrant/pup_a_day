# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Shelter.destroy_all
# Person.destroy_all
Puppy.destroy_all
Rental.destroy_all
Advertisement.destroy_all

Shelter.reset_pk_sequence
Person.reset_pk_sequence
Puppy.reset_pk_sequence
Rental.reset_pk_sequence
Advertisement.reset_pk_sequence

10.times do 
    Shelter.create(name: Faker::Movies::HarryPotter.spell, location: Faker::Movies::HarryPotter.location)
end

# Faker::Internet.username #=> "alexie"
# 15.times do
#     Person.create(name: Faker::Movies::StarWars.character, age: rand(16..70), gender: Faker::Gender.binary_type, username: Faker::Internet.username, email: Faker::Internet.free_email)
# end

#image !!!
url = "https://random.dog/woof.json"
35.times do 
  res = RestClient.get(url)
  res_body = res.body 
  ruby_hash = JSON.parse(res_body)
  
  Puppy.create(name: Faker::Creature::Dog.name, breed: Faker::Creature::Dog.breed, age: rand(1..10), cute_fact: Faker::Creature::Dog.meme_phrase, cost: rand(50..100), shelter_id: Shelter.all.sample.id, image: ruby_hash["url"])
end

# 20.times do
#     Rental.create(cost: 0, time: rand(1..24), puppy_id: Puppy.all.sample.id, person_id: Person.all.sample.id)
# end

30.times do
    Advertisement.create(shelter_id: Shelter.all.sample.id, puppy_id: Puppy.all.sample.id, info: Faker::Movies::PrincessBride.quote)
end

puts "Seeded"

