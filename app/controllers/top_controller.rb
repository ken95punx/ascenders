class TopController < ApplicationController
  def index
  	@movies = Movie.all.order(created_at: :desc)
  	@Articles = Article.all.order(created_at: :desc)
  end
end
