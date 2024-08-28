# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb
Restaurant.destroy_all

restaurants = [
  { name: "Central", address: "75008 Paris", phone_number: "01 42 65 65 65", category: "french" },
  { name: "La tia veneno", address: "123 Main St, Chinatown", phone_number: "555-1234", category: "chinese" },
  { name: "El cucaracho", address: "456 Elm St, Tokyo", phone_number: "555-5678", category: "japanese" },
  { name: "La Ultima cena", address: "789 Maple Ave, Rome", phone_number: "555-8765", category: "italian" },
  { name: "A la Clinica", address: "101 Oak St, Brussels", phone_number: "555-4321", category: "belgian" }
]

restaurants.each do |restaurant|
  #*Usamos el metodo create que  aprendimos hace 2 semanas 
  Restaurant.create!(restaurant)
end

puts "Created #{Restaurant.count} restaurants"
