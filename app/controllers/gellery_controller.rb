class GelleryController < ApplicationController
  PER = 12

  def index
    @gelleries = Gellery.where(player_id: params[:player_id]).page(params[:page]).per(PER)
    @player = Player.find(params[:player_id])
  end

  def show
    @player = Player.find(params[:player_id])
    @gellery = Gellery.find(params[:id])
  end
end
