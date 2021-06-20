# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Shelter.destroy_all
Puppy.destroy_all
Rental.destroy_all
Advertisement.destroy_all

Shelter.reset_pk_sequence
Puppy.reset_pk_sequence
Rental.reset_pk_sequence
Advertisement.reset_pk_sequence

10.times do 
    Shelter.create(name: Faker::TvShows::Seinfeld.unique.business, location: Faker::Address.unique.city)
end


#image !!!
url = "https://random.dog/woof.json"
20.times do 
  res = RestClient.get(url)
  res_body = res.body 
  ruby_hash = JSON.parse(res_body)
  
  Puppy.create(name: Faker::Creature::Dog.unique.name, breed: Faker::Creature::Dog.breed, age: rand(1..10), cost: rand(50..100), shelter_id: Shelter.all.sample.id, image: ruby_hash["url"])
end


puppyArray = Puppy.all

puppyArray.each {|puppy| Advertisement.create(shelter_id: Shelter.all.sample.id, puppy_id: puppy.id, info: Faker::Movies::PrincessBride.quote)}

puts "Seeded"

