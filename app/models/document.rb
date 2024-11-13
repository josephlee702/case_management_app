class Document < ApplicationRecord
  belongs_to :case
  enum status: { Open: 0, Closed: 1, other: 2 }
end
