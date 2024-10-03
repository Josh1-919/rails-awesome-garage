# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Car.destroy_all
Owner.destroy_all

puts "Creating owners..."
owner1 = Owner.create!(nickname: "Josh")
owner2 = Owner.create!(nickname: "JBen")
owner3 = Owner.create!(nickname: "AedanG")
owner4 = Owner.create!(nickname: "LNew")
owner5 = Owner.create!(nickname: "Honey")

puts "creating cars..."

Car.create!(brand: "Volvo",model: "480", year: 1994, fuel: "Petrol", owner: owner1)
Car.create!(brand: "Lotus", model: "Esprit", year: 1989, fuel: "Petrol", owner: owner2)
Car.create!(brand: "Ford", model: "Cortina", year: 1966, fuel: "Petrol", owner: owner3)
Car.create!(brand: "Fiat", model: "X1/9", year: 1972, fuel: "Petrol", owner: owner4)
Car.create!(brand: "Mercedes", model: "250 sl", year: 1967, fuel: "Petrol", owner: owner5)

puts "done #{Owner.count} owners and #{Car.count} cars"
