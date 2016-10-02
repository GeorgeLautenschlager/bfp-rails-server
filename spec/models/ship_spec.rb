require 'rails_helper'

RSpec.describe Ship, type: :model do
  describe "move" do
    before :each do
      @ship = create :ship, location_x: 500, location_y: 500
    end

    it "works" do
      @ship.move!(50)

      expect(@ship.location_x).to eq(550)
    end
  end
end
