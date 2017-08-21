class ArticleController < ApplicationController
  PER = 9

  def index
    @articles = Article.order(created_at: :desc).page(params[:page]).per(PER)
  end

  def show
    @articles = Article.limit(9).order(created_at: :desc)
    @article = Article.find_by(id: params[:id])
  end
end
