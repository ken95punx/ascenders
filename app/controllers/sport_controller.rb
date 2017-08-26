class SportController < ApplicationController
  def index
  end

  private
    def player_params
      params.require(:sport).permit(:name, :image)
    end
end
