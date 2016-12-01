class InstantArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    article = Article.find(params[:id])
    render layout: false, locals: { article: article }
  end
end
