class MovieController < ApplicationController
  PER = 8

  def index
    @movies = Movie.page(params[:page]).per(PER)
    @movie = Movie.first
  end

  def click_movie
    @movie = Movie.find_by(id: params[:movie_id])
  end
end
