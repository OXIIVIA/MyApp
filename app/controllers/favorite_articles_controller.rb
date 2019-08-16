class FavoriteArticlesController < ApplicationController
  before_action :set_article

  def create
    favorite = current_user.favorite_articles.new(article_id: @article.id)
    favorite.save
  end

  def destroy
    favorite = current_user.favorite_articles.find_by(article_id: @article.id)
    favorite.destroy
  end

  private

  def set_article
    @article = Article.find(params[:article_id])
  end
  
end
