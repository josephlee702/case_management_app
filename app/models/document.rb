class Document < ApplicationRecord
  belongs_to :case
  enum status: { "Drafted": 0, "Needs Signature": 1, "Signed": 2, "Submitted": 3 }
end
