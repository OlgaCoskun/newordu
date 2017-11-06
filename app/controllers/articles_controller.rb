class ArticlesController < ApplicationController

  def index
    @article = Article.all
  end

  def new
    @article = Article.new
  end

  def show
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article
    else
      render action: 'new'
    end
  end

  private

    def article_params
      params.require(:article).permit(:title, :description)
    end
end


