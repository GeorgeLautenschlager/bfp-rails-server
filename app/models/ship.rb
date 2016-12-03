class Ship < ApplicationRecord
  belongs_to :fleet

  validates :name, presence: true, uniqueness: {scope: :fleet, message: "should be unique within it's fleet"}
  validates :fleet, presence: true
  validate :fleet_has_room

  ESCORT = "escort"
  CRUISER = "cruiser"
  BATTLESHIP = "battleship"
  SIZES = [ESCORT, CRUISER, BATTLESHIP]

  def move!(distance)
    self.x_coord = self.x_coord + distance
    self.save
  end

  def fleet_has_room
    unless self.fleet&.has_room?(self)
      errors.add(:fleet, "does not have room for this")
    end
  end
end
