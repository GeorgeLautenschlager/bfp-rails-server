require 'rails_helper'

RSpec.describe ShipsController, type: :controller do
  before :all do
    create_list(:ship, 3)
    @ships = Ship.all
    @ship1 = @ships[0]
    @ship2 = @ships[1]
    @ship3 = @ships[2]
  end

  describe "GET #index" do
    it "returns a list of ships in JSONAPI format" do
      get :index
      expect(response.status).to eq(200)

      json = JSON.parse(response.body)
      expect(json["data"].count).to eq(@ships.length)

      @ships.each do |ship|
        serializer = ShipSerializer.new(ship)
        ship_json = JSON.parse(ActiveModelSerializers::Adapter.create(serializer).to_json)["data"]

        expect(json["data"]).to include(ship_json)
      end
    end
  end

  describe "GET #show" do
    it "returns a ship resource" do
      get :show, params: {id: @ship1}
      expect(response.status).to eq(200)

      json = JSON.parse(response.body)

      serializer = ShipSerializer.new(@ship1)
      ship_json = JSON.parse(ActiveModelSerializers::Adapter.create(serializer).to_json)["data"]

      expect(json["data"]).to eq(ship_json)
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      it "updates the requested ship" do
        expect{
          patch :update, params: {id: @ship1.id, distance: 50}
          expect(response.status).to eq(200)
        }.to change{@ship1.reload.x_coord}.by(50)
      end

      it "does not update other ships" do
        expect{
          patch :update, params: {id: @ship1.id, distance: 50}
          expect(response.status).to eq(200)
        }.to change{@ship2.reload.x_coord}.by(0).and change{@ship3.reload.x_coord}.by(0)
      end
    end

    context "with invalid params" do
      it "returns an http error(code TBD) with message"
    end
  end
end
