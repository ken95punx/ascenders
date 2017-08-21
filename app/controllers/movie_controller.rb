class MovieController < ApplicationController
  PER = 8

  def index
    @movies = Movie.order(created_at: :desc).page(params[:page]).per(PER)
    @movie = Movie.last
  end

  def click_movie
    @movie = Movie.find_by(id: params[:movie_id])
  end
end
