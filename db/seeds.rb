# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Client.create(first_name: "Joseph", last_name: "Lee", email: "jhjlee702@gmail.com", phone_number: "123-456-7890", address: "123 Test St", city: "Testing City", state: "Colorado", zip_code: "12345", gender: 0, DOB: Date.new(1997, 7, 2), emergency_contact_name: "Joanna Lee", emergency_contact_phone: "000-000-0000", drivers_license: "9283993205", insurance: "Statefarm", notes: "This is a test client.")