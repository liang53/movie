class MoviesController < ApplicationController
  include ApplicationHelper
  
  def index
  end

  def show
    type = "movie"
    @movie = find_by_id(params['id'],type)
  end
end
