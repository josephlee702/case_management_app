FactoryBot.define do
  factory :case do
    case_number { "000001" }
    injury_type { "Car Accident" }
    claimant_insurance { "Statefarm" }
    policy_number { "5560429" }
    attorney_assigned { "Adam Bowers" }
    case_status { 0 }
    date_of_incident { Date.new(2024, 11, 11) }
    date_of_retention { Date.new(2024, 11, 15) }
    medical_providers { "N/A" }
    notes { "This is a test case." }
    association :client
  end
end
