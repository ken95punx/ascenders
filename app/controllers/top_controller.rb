class TopController < ApplicationController
  def index
  	@movies = Movie.all.order(created_at: :desc)
  	@articles = Article.all.order(created_at: :desc)
  	@movie = Movie.last
  end

  def click_movie
  	@movie = Movie.find_by(id: params[:movie_id])
  end
end
