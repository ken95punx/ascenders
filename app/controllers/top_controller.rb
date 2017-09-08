class TopController < ApplicationController
  def index
    @movies = Movie.limit(10).order(created_at: :desc)
    @articles = Article.limit(9).order(created_at: :desc)
    @movie = @movies.first
    @search = Player.ransack(params[:q])
  end

  def click_movie
    @movie = Movie.find_by(id: params[:movie_id])
  end
end
