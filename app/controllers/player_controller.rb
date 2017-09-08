class PlayerController < ApplicationController
  PER = 8

  before_action :set_player, only: [:index, :show]

  def index
    @result = @search.result.page(params[:page]).per(PER).order(created_at: :desc)
  end

  def show
    @player = Player.find(params[:id])
    @movies = Movie.where(player_id: params[:id]).limit(10).order(created_at: :desc)
    @movie = @movies.first
    @articles = Article.where(player_id: params[:id]).limit(10).order(created_at: :desc)
    @gelleries = Gellery.where(player_id: params[:id]).limit(10).order(created_at: :desc)
    @friends = @player.followed_players.page(params[:page]).per(PER).limit(10).order(created_at: :desc)
  end

  def click_movie
    @movie = Movie.find_by(id: params[:movie_id])
  end

  private

    def set_player
      @sports = Sport.all.order(created_at: :desc)
      @search = Player.ransack(params[:q])
    end

    # def player_params
    #   params.require(:player).permit(:name, :hiragana_name, :katakana_name, :profile_image, :cover_image, :place_birth, :blood_type, :league_school, :team, :height, :weight, :alma_mater, :website, :introduction, :opponent_next, :time_next, :url_next, :opponent_result, :result_result, :self_point_result, :enemy_point_result, :url_result, :staff_id, :birth_date, :sport_id)
    # end
end

