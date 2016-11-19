class ShipsController < ApplicationController
  before_action :set_ship, except: [:index]

  def index
    render json: {ships: Ship.all.map(&:to_json)}
  end

  def move
    @ship.move!(params[:distance].to_i)

    render json: @ship
  end

  private
    def set_ship
      @ship = Ship.find(params[:id])
    end
end
