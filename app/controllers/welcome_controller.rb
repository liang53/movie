class WelcomeController < ApplicationController
  include ApplicationHelper

  def index
    # discover tv shows
    response = discover_tvshows()
    @tvshows = response['results']

    #discover movies
    response = discover_movies()
    @movies = response['results']

    #carousel gallery
    response = trending()
    @trending = response['results']
  end

  def show
    # search
    @search = params['search']
    if @search && !@search.empty? && !@search.nil?
      response = search_multi(@search)
      @search_results = response['results']
    end
  end
end
