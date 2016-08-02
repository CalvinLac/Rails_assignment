class ArticlesController < ApplicationController
  def index
    @article = Article.all
  end

  def new
    @articles = Article.new
  end

  def create
    @articles = Article.new
    @articles.title = params[:title]
    @articles.body = params[:body]
    @articles.save

    redirect_to article_path(@articles)

  end

  def show
   @article = Article.find(params[:id])

  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update ({:title => params[:title]})
    @article.update ({:body => params[:body]})
    redirect_to article_path(@article)
  end


  private

  # def article_params
  #   params.require(:articles).permit :title, :body
  # end
end
