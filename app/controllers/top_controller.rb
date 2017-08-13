class TopController < ApplicationController
  def index
  	@movies = Movie.all
  	@Articles = Article.all
  end
end
