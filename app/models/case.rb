class Case < ApplicationRecord
  belongs_to :client
  has_many :documents
  enum case_status: { "Open": 0, "Closed": 1 }

  before_create :generate_case_number

  private

  def generate_case_number
    self.case_number ||= "#{SecureRandom.hex(5).upcase}"
  end
end
