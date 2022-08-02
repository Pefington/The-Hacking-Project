# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require 'rubocop-faker'

100.times do
  Movie.create!(
    name: Faker::Movie.title, year: Faker::Number.within(range: 1900..2020),
    genre: %w[Action Comedy Drama Horror].sample, synopsis: Faker::Lorem.paragraph,
    director: Faker::Name.name, allocine_rating: Faker::Number.between(from: 0.0, to: 5.0).round(1),
    already_seen: false, my_rating: nil
  )
end
