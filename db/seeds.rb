# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'


10.times do
 user = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email,
 password: Faker::Internet.password)
end

# puts "Destroy assassins"
# Assassin.destroy_all

10.times do
 assassin = Assassin.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name,
 city: Faker::Address.city, total_kills: Faker::Number.within(range: 1..50), has_gun: Faker::Boolean.boolean, has_knife: Faker::Boolean.boolean,
 has_candlestick: Faker::Boolean.boolean, has_wrench: Faker::Boolean.boolean, has_rope: Faker::Boolean.boolean, summary: Faker::Quote.matz,
 price: Faker::Commerce.price, user: User.first)

end


