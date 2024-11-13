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

Client.create(first_name: "James", last_name: "Kim", email: "jkim@gmail.com", phone_number: "512-142-8812", address: "456 Test St", city: "Testing City 2", state: "New york", zip_code: "00802", gender: 0, DOB: Date.new(2000, 5, 1), emergency_contact_name: "Joyce Kim", emergency_contact_phone: "100-000-0001", drivers_license: "9819288005", insurance: "Geico", notes: "This is a test client 2.")

Case.create(case_number: "000001", client_id: 1, injury_type: "Slip and Fall", claimant_insurance: "Progressive", policy_number: "5988329", attorney_assigned: "Dallas Norton", case_status: 0, date_of_incident: Date.new(2024, 12, 17), date_of_retention: Date.new(2024, 12, 25), medical_providers: "N/A", notes: "This is a test case.")

Case.create(case_number: "000002", client_id: 2, injury_type: "Car Accident", claimant_insurance: "Statefarm", policy_number: "5560429", attorney_assigned: "Adam Bowers", case_status: 0, date_of_incident: Date.new(2024, 11, 11), date_of_retention: Date.new(2024, 11, 15), medical_providers: "N/A", notes: "This is a test case.")