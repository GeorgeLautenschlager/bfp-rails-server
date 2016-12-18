class Game < ApplicationRecord
  has_and_belongs_to_many :players
  has_many :fleets
  has_many :ships, through: :fleets
end
