class FiltersController < ApplicationController
  def show
    # Parameters: {"id"=>"421"}
    @filter = Filter.find(params[:id])
    @filters = Filter.all
    @products =  Filter.find(params[:id]).products
    @categories = @products.map do |prod|
      prod.category
    end
    @uniq = @categories.uniq
  end
end
