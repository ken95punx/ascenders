class GelleryController < ApplicationController
  PER = 12

  def index
    @sports = Sport.all
    @search = Player.ransack(params[:q])
    @gelleries = Gellery.where(player_id: params[:player_id]).page(params[:page]).per(PER)
    @player = Player.find(params[:player_id])
  end

  def show
    @sports = Sport.all
    @search = Player.ransack(params[:q])
    @player = Player.find(params[:player_id])
    @gellery = Gellery.find(params[:id])
  end
end
