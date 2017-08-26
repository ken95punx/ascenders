class SportController < ApplicationController
  def index
    @sports = Sport.all.order(created_at: :desc)
  end

  private
    def player_params
      params.require(:sport).permit(:name, :image)
    end
end
