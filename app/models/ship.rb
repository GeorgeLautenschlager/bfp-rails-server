class Ship < ApplicationRecord
  belongs_to :fleet
  
  def move!(distance)
    self.location_x = self.location_x + distance
    self.save
  end
end
