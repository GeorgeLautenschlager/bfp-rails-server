class Ship < ApplicationRecord
  def move!(distance)
    self.location_x = self.location_x + distance
  end
end
