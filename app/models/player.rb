class Player < ApplicationRecord
  has_many :fleets
  has_many :ships, through: :fleets
end
