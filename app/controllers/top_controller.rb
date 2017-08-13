class TopController < ApplicationController
  def index
  	@movies = Movie.all
  end
end
