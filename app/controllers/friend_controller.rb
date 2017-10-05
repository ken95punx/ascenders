class FriendController < ApplicationController
  PER = 50

  def index
    @sports = Sport.all.order(created_at: :desc)
    @search = Player.ransack(params[:q])
    @player = Player.find(params[:player_id])
    @friends = @player.followed_players.page(params[:page]).per(PER).order(created_at: :desc)
    @friend = @friends.first
  end
end
