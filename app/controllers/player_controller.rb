class PlayerController < ApplicationController
  PER = 8

  def index
    @players = Player.page(params[:page]).per(PER)
    @sports = Sport.all
    @search = Player.ransack(params[:q])
    @result = @search.result.page(params[:page]).per(PER)
  end

  def show
    @player = Player.find(params[:id])
    @movies = Movie.where(player_id: params[:id]).limit(10)
    @movie = Movie.where(player_id: params[:id]).last
    @articles = Article.where(player_id: params[:id]).limit(10)
    @gelleries = Gellery.where(player_id: params[:id]).limit(10)
  end

  def click_movie
    @movie = Movie.find_by(id: params[:movie_id])
  end

  private
    def player_params
      params.require(:player).permit(:name, :kana_name, :profile_image, :cover_image, :place_birth, :blood_type, :league_school, :team, :height, :weight, :alma_mater, :website, :introduction, :opponent_next, :time_next, :url_next, :opponent_result, :result_result, :self_point_result, :enemy_point_result, :url_result, :staff_id, :birth_date, :sport_id)
    end
end
