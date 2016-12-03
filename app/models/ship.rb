class Ship < ApplicationRecord
  belongs_to :fleet

  ESCORT = "escort"
  CRUISER = "cruiser"
  BATTLESHIP = "battleship"
  SIZES = [ESCORT, CRUISER, BATTLESHIP]

  def move!(distance)
    self.x_coord = self.x_coord + distance
    self.save
  end
end
