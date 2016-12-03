class FleetsController < ApplicationController
  before_action :set_fleet, except: [:index]

  def index
    render json: Fleet.all
  end

  private
   def set_fleet
     @fleet = Fleet.find(params[:id])
   end
end
