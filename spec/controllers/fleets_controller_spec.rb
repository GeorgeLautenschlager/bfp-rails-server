require 'rails_helper'

RSpec.describe FleetsController, type: :controller do
  before :all do
    @fleets = create_list(:fleet_with_ships, 3)
  end

  describe "GET #index" do
    it "returns a list of fleets" do
      get :index
      expect(response.status).to eq(200)

      json = JSON.parse(response.body)
      expect(json["data"].count).to eq(@fleets.length)

      @fleets.each do |ship|
        serializer = FleetSerializer.new(ship)
        fleet_json = JSON.parse(ActiveModelSerializers::Adapter.create(serializer).to_json)["data"]

        expect(json["data"]).to include(fleet_json)
      end
    end
  end
end
