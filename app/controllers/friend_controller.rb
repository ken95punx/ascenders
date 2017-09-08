class FriendController < ApplicationController
  PER = 8

  def index
    @sports = Sport.all.order(created_at: :desc)
    @search = Player.ransack(params[:q])
    @player = Player.find(params[:player_id])
    @friends = @player.followed_players.page(params[:page]).per(PER).order(created_at: :desc)
  end
end
