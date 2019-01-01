require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the MoviesHelper. For example:
#
# describe MoviesHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe MovieDbHelper, type: :helper do
  describe "get" do
    it "fetch data from moviedb api" do
    end
  end

  describe "discover_tvshows" do
    it "returns a hash of most popular tv shows" do
      expect(helper.discover_tvshows).to be_a(Hash)
    end
  end

  describe "discover_movies" do
    it "returns a hash of most popular movies" do
      expect(helper.discover_movies).to be_a(Hash)
    end
  end

  describe "search_multi(keywords)" do
    it "returns a hash of the search" do
      expect(helper.search_multi("Vikings")).to be_a(Hash)
    end
  end

  describe "find_by_id(id=nil, type)" do
    #297802 = Aquaman
    it "finds movie by id and return a hash" do
      expect(helper.find_by_id(297802,"movie")).to be_a(Hash)
    end

    it "search tv show by id and returns a hash" do
      # 44217 = Vikings
      expect(helper.find_by_id(44217,"tv")).to be_a(Hash)
    end
  end

end
