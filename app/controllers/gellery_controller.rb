class GelleryController < ApplicationController
  PER = 50

  before_action :set_gellery

  def index
    @gelleries = Gellery.where(player_id: params[:player_id]).page(params[:page]).per(PER).order(created_at: :desc)
  end

  def show
    @gellery = Gellery.find(params[:id])
  end

  private

    def set_gellery
      @sports = Sport.all.order(created_at: :desc)
      @search = Player.ransack(params[:q])
      @player = Player.find(params[:player_id])
    end
end
