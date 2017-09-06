class MovieController < ApplicationController
  PER = 8

  def index
    @sports = Sport.all
    @search = Movie.ransack(params[:q])
    @result = @search.result.page(params[:page]).per(PER)
    @movie = @result.first
  end

  def click_movie
    @movie = Movie.find_by(id: params[:movie_id])
  end
end
