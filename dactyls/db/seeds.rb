# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#method to seed a bunch of cats


100.times do
  Dactyl.create!(
    name: Faker::Cat.name,
    size: Faker::MichaelScott.quote,
    flight: Faker::Boolean.boolean
  )
end