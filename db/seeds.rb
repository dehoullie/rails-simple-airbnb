# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require 'faker'

# Create 10 flats with: Name, Address, Description, Price per night, Number of guests, Number of beds, number of toilets
10.times do
  Flat.create!(
    name: Faker::Address.community,
    address: Faker::Address.full_address,
    description: Faker::Lorem.paragraph,
    price_per_night: rand(50..500),
    number_of_guests: rand(1..10),
    number_of_beds: rand(1..5),
    number_of_toilets: rand(1..3)
  )
end
