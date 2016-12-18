class GamesController < ActionController::Base
  def show
    render json: @game
  end

  private
    def set_game
      @game = Game.find(params[:id])
    end
end
