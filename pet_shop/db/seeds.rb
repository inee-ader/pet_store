# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Pet.destroy_all
species = ["red dragon", "hippopotamus", "snail", "griffon"]

25.times do 
    pet = Pet.create(name: Faker::Movies::HarryPotter.character, species: species.sample, year_of_birth: rand(1800..1850), good_with_kids: [true, false].sample)
end

