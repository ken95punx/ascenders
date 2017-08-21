class ArticleController < ApplicationController
  PER = 9

  def index
    @articles = Article.order(created_at: :desc).page(params[:page]).per(PER)
  end
end
