class PagesController < ApplicationController
  def home
    @filters = Filter.all
  end
end
