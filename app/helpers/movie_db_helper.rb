# https://developers.themoviedb.org/3/discover/tv-discover

require 'uri'
require 'net/http'

module MovieDbHelper
  HOST_URL = "https://api.themoviedb.org/3"
  # heroku securing api key
  # https://devcenter.heroku.com/articles/config-vars ENV['API_KEY']

  # this is the main method to call to retrieve results from moviedb
  # all the methods below get(path) configures the url

  def get(path) # code generated from moviedb website
    url = URI("#{HOST_URL}#{path}#{ENV['API_KEY']}")
    response = Net::HTTP.get_response(url)
    begin
      response_hash = JSON.parse(response.read_body)
      return response_hash
    rescue
      {}
    end
  end


  def discover_tvshows
    path = '/discover/tv?include_null_first_air_dates=false&timezone=America%2FNew_York&page=1&sort_by=popularity.desc&language=en-US&api_key='
    response = get(path)
    return response
  end

  def discover_movies
    path = '/discover/movie?page=1&include_video=false&include_adult=false&sort_by=popularity.desc&language=en-US&api_key='
    response = get(path)
    return response
  end

  def search_multi(keywords) # keywords are strings of words
    k = keywords.gsub(" ", "%20")

    path = "/search/multi?include_adult=false&query=#{k}&language=en-US&api_key="
    response = get(path)
    return response
  end

  def find_by_id(id=nil, type)
    # https://developers.themoviedb.org/3/find/find-by-id
    path = "/#{type}/#{id}?language=en-US&api_key="
    response = get(path)
  end

  def trending
    path = "/trending/all/day?api_key="
    response = get(path)
    return response
  end

  def get_videos(id=nil, type)
    path = "/#{type}/#{id}/videos?language=en-US&api_key="
    response = get(path)
    p response
    return response
  end

end
