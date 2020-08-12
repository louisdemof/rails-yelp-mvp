require 'faker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'cleaning up database'
Restaurant.destroy_all
puts 'database is clean'

puts 'creating restaurants'
10. times do
  restaurant = Restaurant.create(
    name: Faker::Restaurant.unique.name,
    address: Faker::Address.unique.full_address,
    category: Restaurant::CATEGORY.sample,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164
  )
  puts "restaurant #{restaurant.id} is created"
end
puts 'done'
