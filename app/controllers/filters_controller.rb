class FiltersController < ApplicationController
  def show
    # Parameters: {"id"=>"421"}
    @filter = Filter.find(params[:id])
    
  end
end
