require 'rails_helper'

RSpec.describe ShipsController, type: :controller do
  describe "PUT #move" do
    context "with valid params" do
      before :each do
        @ship = create :ship, location_x: 500, location_y: 500, orientation: 90
      end

      it "updates the requested ship" do
        patch :move, params: {id: @ship.id, distance: 50}
        
        @ship.reload
        expect(@ship.location_x).to eq(550)
      end
    end

    context "with invalid params" do
    end
  end
end
