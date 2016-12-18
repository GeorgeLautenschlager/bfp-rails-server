class GamesController < ActionController::Base
  before_action :set_game

  def show
    render json: @game, include: ['players', 'fleets', 'ships']
  end

  private
    def set_game
      @game = Game.find(params[:id])
    end
end
