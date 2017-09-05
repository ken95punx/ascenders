class ArticleController < ApplicationController
  PER = 9

  def index
    @articles = Article.page(params[:page]).per(PER)
  end

  def show
    @articles = Article.limit(9)
    @article = Article.find_by(id: params[:id])
  end
end
