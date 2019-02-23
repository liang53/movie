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

    @images = []
    @trending.each_with_index do |show, n|
      poster_path = show['poster_path']
      @images << "https://image.tmdb.org/t/p/original/#{poster_path}" # sizes 342,500,780
    end
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
