class ShipsController < ApplicationController
  before_action :set_ship, except: [:index]

  def index
    render json: Ship.all
  end

  def show
    render json: @ship
  end

  def update
    @ship.update_attributes(ship_params)
    render json: @ship
  end

  private
    def set_ship
      @ship = Ship.find(params[:id])
    end

    def ship_params
      ActiveModelSerializers::Deserialization.jsonapi_parse(params, only: [:name, :location_x, :location_y, :heading])
    end
end
