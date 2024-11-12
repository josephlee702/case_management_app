class Client < ApplicationRecord
  has_many :cases
  enum gender: { male: 0, female: 1, other: 2 }
end
