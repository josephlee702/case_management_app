FactoryBot.define do
  factory :client do
    first_name { "Joseph" }
    last_name { "Lee" }
    email { "jhjlee702@gmail.com" }
    phone_number { "123-456-7890" }
    address { "123 Test St" }
    city { "Testing City" }
    state { "Colorado" }
    zip_code { "12345" }
    gender { 0 }
    DOB { Date.new(1997, 7, 2) }
    emergency_contact_name { "Joanna Lee" }
    emergency_contact_phone { "000-000-0000" }
    drivers_license { "9283993205" }
    insurance { "Statefarm" }
    notes { "This is a test client." }
  end
end
