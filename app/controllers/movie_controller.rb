class MovieController < ApplicationController
  PER = 8

  def index
    @movies = Movie.page(params[:page]).per(PER)
    @movie = Movie.last
  end
end
