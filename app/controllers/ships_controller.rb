class ShipsController < ApplicationController
  before_action :set_ship

  def move
    @ship.move!(params[:distance].to_i)
  end

  private
    def set_ship
      @ship = Ship.find(params[:id])
    end
end
