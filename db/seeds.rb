# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "destroy users"
User.destroy_all

10.times do
 user = User.create!({
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: Faker::Internet.password,
 })
end

data = [
  {
    first_name: "Ricardo",
    last_name: "Araujo",
    address: "Avenida dos Aliados, Porto",
    url: "https://avatars1.githubusercontent.com/u/22415816?v=4"
  },
  {
    first_name: "Cass",
    last_name: "Arola",
    address: "Avenida da Boavista, Porto",
    url: "https://avatars1.githubusercontent.com/u/59645241?v=4"
  },
  {
    first_name: "Megan",
    last_name: "Bailey",
    address: "Rua das Flores, Porto",
    url: "https://avatars1.githubusercontent.com/u/51266086?v=4"
  },
  {
    first_name: "Lara",
    last_name: "Mills",
    address: "Rua Santa Catarina, Porto",
    url: "https://avatars3.githubusercontent.com/u/61751892?v=4"
  },
  {
    first_name: "Eukleyv",
    last_name: "Cardoso",
    address: "Almeida Garrett, Porto",
    url: "https://avatars1.githubusercontent.com/u/68221749?v=4"
  },
  {
    first_name: "Branca",
    last_name: "Chiotte",
    address: "Galeria de Paris, Porto",
    url: "https://avatars2.githubusercontent.com/u/68083103?v=4"
  },
  {
    first_name: "Samira",
    last_name: "Eilinger",
    address: "Miguel Bombarda, Porto",
    url: "https://avatars1.githubusercontent.com/u/38704468?v=4"

  },
  {
    first_name: "Maria",
    last_name: "Nery",
    address: "Praça da Batalha, Porto",
    url: "https://avatars1.githubusercontent.com/u/67118326?v=4"

  },
  {
    first_name: "Louis",
    last_name: "Fialho",
    address: "Praça da Liberdade, Porto",
    url: "https://avatars1.githubusercontent.com/u/61750901?v=4"
  },
  {
    first_name: "Adriano",
    last_name: "Leite",
    address: "Praça da Ribeira, Porto",
    url: "https://avatars0.githubusercontent.com/u/67058933?v=4"
  }
]
puts "Destroy assassins"
Assassin.destroy_all

data.each do |props|
  assassin = Assassin.create!({
    first_name: props[:first_name],
    last_name: props[:last_name],
    city: Faker::Address.city,
    total_kills: Faker::Number.within(range: 1..50),
    has_gun: Faker::Boolean.boolean,
    has_knife: Faker::Boolean.boolean,
    has_candlestick: Faker::Boolean.boolean,
    has_wrench: Faker::Boolean.boolean,
    has_rope: Faker::Boolean.boolean,
    summary: Faker::Quote.matz,
    price: Faker::Commerce.price,
    address: props[:address],
    user: User.first,
    url: props[:url]
  })
end

