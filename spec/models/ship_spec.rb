require 'rails_helper'

RSpec.describe Ship, type: :model do
  describe "create" do
    context "fleet" do
      let (:fleet) {create :fleet}
      let (:ship) {build :ship}

      it "requires a fleet association" do
        ship.fleet = nil

        ship.save

        expect(ship.errors["fleet"]).to include("can't be blank")
      end

      it "can be assigned to a fleet with sufficient points available" do
        ship.fleet = fleet

        ship.save

        expect(ship.errors["fleet"]).to be_empty
      end

      it "cannot be assigned to a fleet with insufficient points available" do
        ship.fleet = fleet
        ship.points = fleet.points_limit + 1

        ship.save

        expect(ship.errors["fleet"]).to include("does not have room for this")
      end
    end
  end

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
