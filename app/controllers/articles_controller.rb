class ArticlesController < ApplicationController 
  before_action :set_article, only: [:show]
  before_action :set_artist, only: [:show]

  def index
    @articles = Article.order("id DESC").limit(16)
    last_article_id = params[:id]
    @next = Article.where("id < #{last_article_id}", params[:id]).limit(16)
    respond_to do |format|
      format.html
      format.json 
    end
  end

  def show
    @articles = @artist.articles.where.not(id: @article.id)
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def set_artist
    @artist = Article.find(params[:id]).artist
  end
end