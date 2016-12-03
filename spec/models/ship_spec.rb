require 'rails_helper'

RSpec.describe Ship, type: :model do
  describe "move" do
    before :each do
      @ship = create :ship, x_coord: 500, y_coord: 500, bearing: 90
    end

    it "works" do
      @ship.move!(50)

      expect(@ship.reload.x_coord).to eq(550)
    end
  end
end
