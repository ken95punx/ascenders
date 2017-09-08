class MovieController < ApplicationController
  PER = 8

  def index
    @sports = Sport.all.order(created_at: :desc)
    @search = Movie.ransack(params[:q])
    @result = @search.result.page(params[:page]).per(PER).order(created_at: :desc)
    @movie = @result.first
  end

  def click_movie
    @movie = Movie.find_by(id: params[:movie_id])
  end

  # private
  #   def movie_params
  #     params.require(:movie).permit(:title, :player_id, :movie_thum, :movie_html, :sport_id)
  #   end
end
