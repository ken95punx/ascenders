class ArticleController < ApplicationController
  PER = 12

  before_action :set_article

  def index
    @result = @search.result.page(params[:page]).per(PER).order(created_at: :desc)
    @article = @result.first
  end

  def show
    @articles = Article.limit(8).order(created_at: :desc)
    @article = Article.find_by(id: params[:id])
  end

  private

    def set_article
      @sports = Sport.all.order(created_at: :desc)
      @search = Article.ransack(params[:q])
    end

  #   def article_params
  #     params.require(:article).permit(:title, :media, :image_link, :original_link, :player_id, :sport_id)
  #   end
end
