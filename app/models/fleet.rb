class Fleet < ApplicationRecord
  has_many :ships

  validates :points_limit, presence: true
  validate :fleet_points_cost_under_limit

  def fleet_points_cost_under_limit
    if points_total > points_limit
      errors.add(:ships, "over points limit")
    end
  end

  def points_total
    ships.sum(&:points)
  end

  def has_room?(ship)
    (self.points_limit - self.points_total) >= ship.points
  end
end
