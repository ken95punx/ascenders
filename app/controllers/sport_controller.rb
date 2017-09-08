class SportController < ApplicationController
  def index
    @sports = Sport.all.order(created_at: :desc)
    @search = Player.ransack(params[:q])
  end

  # private

  #   def sport_params
  #     params.require(:sport).permit(:name, :image)
  #   end
end
