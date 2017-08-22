class PlayerController < ApplicationController
  PER = 3

  def index
    @players = Player.order(created_at: :desc).page(params[:page]).per(PER)
  end
end
