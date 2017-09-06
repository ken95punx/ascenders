class ArticleController < ApplicationController
  PER = 9

  def index
    @sports = Sport.all
    @search = Article.ransack(params[:q])
    @result = @search.result.page(params[:page]).per(PER)
  end

  def show
    @sports = Sport.all
    @search = Article.ransack(params[:q])
    @articles = Article.limit(9)
    @article = Article.find_by(id: params[:id])
  end
end
