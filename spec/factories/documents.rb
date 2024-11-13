FactoryBot.define do
  factory :document do
    # am I going to need document name? Wouldn't it be redundant to the document_type?
    name { "Drivers License" }
    date_uploaded { Date.new( 2024, 10, 10 ) }
    file_url { "https://via.placeholder.com/300x200.png?text=Driver+License+Placeholder" }
    document_type { "Drivers License" }
    status { 1 }
    notes { "This is a test document object." }
  end
end
