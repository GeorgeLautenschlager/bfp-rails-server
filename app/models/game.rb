class Game < ApplicationRecord
  has_and_belongs_to_many :players
  has_many :fleets, through: :players
  has_many :ships, through: :fleets
end
