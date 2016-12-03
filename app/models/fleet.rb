class Fleet < ApplicationRecord
  has_many :ships

  validates :points_limit, presence: true
  validate :fleet_points_cost_under_limit

  def fleet_points_cost_under_limit
    if ships.sum(&:points) > points_limit
      errors.add(:ships, "over points limit")
    end
  end
end
