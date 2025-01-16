# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
owner1 = Owner.create(nickname: "Annie")
owner2 = Owner.create(nickname: "Mikey")
owner3 = Owner.create(nickname: "Alice")

# Create Cars
Car.create(brand: "Toyota", model: "Corolla", year: 2020, fuel: "Gasoline", owner: owner1)
Car.create(brand: "Honda", model: "Civic", year: 2018, fuel: "Diesel", owner: owner2)
Car.create(brand: "Tesla", model: "Model S", year: 2022, fuel: "Electric", owner: owner3)

puts "Seed data created successfully!"
