class HomeController < ApplicationController
  def index
    @articles = Article.all.order(created_at: :desc).limit(3)
    @products = Product.all
  end
end
