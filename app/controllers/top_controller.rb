class TopController < ApplicationController
  def index
    @movies = Movie.limit(10)
    @articles = Article.limit(9)
    @movie = Movie.first
  end

  def click_movie
    @movie = Movie.find_by(id: params[:movie_id])
  end
end
