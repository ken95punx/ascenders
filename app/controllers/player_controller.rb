class PlayerController < ApplicationController
  PER = 3

  def index
    @players = Player.order(created_at: :desc).page(params[:page]).per(PER)
  end

  private
    def player_params
      params.require(:player).permit(:name, :kana_name, :profile_image, :cover_image, :place_birth, :blood_type, :league_school, :team, :height, :weight, :alma_mater, :website, :introduction, :opponent_next, :time_next, :url_next, :opponent_result, :result_result, :self_point_result, :enemy_point_result, :url_result, :staff_id, :birth_date, :sport_id)
    end
end
