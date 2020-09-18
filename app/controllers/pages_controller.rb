class PagesController < ApplicationController
  def home
    @filters = Filter.all
    @products = Product.all
  end
end
