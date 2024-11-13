class Case < ApplicationRecord
  belongs_to :client
  enum case_status: { "Open": 0, "Closed": 1 }
end
