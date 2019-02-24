class TvshowsController < ApplicationController
  include ApplicationHelper

  def index
  end

  def show
    type = "tv"
    @tvshow = find_by_id(params['id'],type)
    @video = get_videos(params['id'], type)
  end
end
