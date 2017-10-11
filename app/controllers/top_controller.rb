class TopController < ApplicationController
  def index
    @movies = Movie.limit(10).order(created_at: :desc)
    @articles = Article.limit(12).order(created_at: :desc)
    @article = @articles.first
    @movie = @movies.first
    @search = Player.ransack(params[:q])
    @sports = Sport.all.order(created_at: :desc)
  end

  def about
    @search = Player.ransack(params[:q])
    @sports = Sport.all.order(created_at: :desc)
  end

  def click_movie
    @movie = Movie.find_by(id: params[:movie_id])
  end
end
