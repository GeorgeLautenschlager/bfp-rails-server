class ShipsController < ApplicationController
  before_action :set_ship, except: [:index]

  def index
    render json: Ship.all
  end

  def show
    render json: @ship
  end

  def update
    @ship.move!(params[:distance].to_i)

    render json: @ship
  end

  private
    def set_ship
      @ship = Ship.find(params[:id])
    end
end
