class Api::ArticlesController < ApplicationController

  def index
    articles = Article.with_details.all
    data = []

    articles.each  do |article|
      data << article.format
    end

    render json: data
  end
end
