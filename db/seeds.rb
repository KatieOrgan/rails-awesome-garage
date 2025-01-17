# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning the database"

Car.destroy_all if Rails.env.development?
Owner.destroy_all if Rails.env.development?

puts "Creating new cars"

katie = Owner.create!(nickname: "Katie326")
sophie = Owner.create!(nickname: "Sophie123")
josi = Owner.create!(nickname: "Josi1")
jill = Owner.create!(nickname: "Jill7446")
alan = Owner.create!(nickname: "Alan7446")
matthias = Owner.create!(nickname: "Matthias1989")


puts "Creating new cars"

Car.create!(brand: "Jeep", model: "Wrangler SUV",
  year: 2017, fuel: "Diesel", owner: katie)

Car.create!(brand: "Honda", model: "HR-V",
  year: 2018, fuel: "Diesel", owner: sophie)

Car.create!(brand: "Dacia Duster", model: "SUV",
  year: 2019, fuel: "Diesel", owner: josi)

Car.create!(brand: "VW Beetle", model: "Camper Van",
  year: 2007, fuel: "Diesel", owner: jill)

Car.create!(brand: "Toyota", model: "Hilux Camper 4x4",
  year: 2022, fuel: "Diesel", owner: alan)

Car.create!(brand: "Fiat", model: "500C",
  year: 2017, fuel: "Petrol", owner: matthias)

puts "Done! #{Car.count} cars created"
