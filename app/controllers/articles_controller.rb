class ArticlesController < ApplicationController
  def index
  end

  def new
    @articles = Article.new
  end
  def create
    article = Article.new(article_params)
    article.save!
    redirect_to article_url, notice: "投稿しました"
  end

  private
  def article_params
    params.require(:article).parmit(:title,:text,:image)
  end
end
