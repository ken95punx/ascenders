class SportController < ApplicationController
  def index
    @sports = Sport.all
    @search = Player.ransack(params[:q])
  end

  private
    def player_params
      params.require(:sport).permit(:name, :image)
    end
end
