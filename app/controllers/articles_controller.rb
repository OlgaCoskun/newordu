class ArticlesController < ApplicationController
  load_and_authorize_resource

  before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]
  before_action :set_article, only: [:edit, :update, :show, :destroy]

  def index
    @articles = Article.all.reverse
  end

  def new
    @article = Article.new
  end

  def edit
  end

  def show
    #@articles = @user.articles.paginate(page: params[:page])
  end

  def create
    @article = Article.new(article_params)
    @article.user_id = current_user.id
    if @article.save
      #flash[:notice] = "Article was successfully created"
      redirect_to @article
    else
      render action: 'new'
    end
  end

  def update
    if @article.update(article_params)
      flash[:notice] = "Article was successfully updated"
      redirect_to @article
    else
      render action: 'edit'
    end
  end

  def destroy
    @article.destroy
    flash[:notice] = "Article '#{@article.title}' was successfully deleted"

    redirect_to articles_path
  end

  private
    def set_article
      @article = Article.find(params[:id])
    end

    def article_params
      params.require(:article).permit(:title, :description, :user_id)
    end
end


