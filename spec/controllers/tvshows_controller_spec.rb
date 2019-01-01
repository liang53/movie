require 'rails_helper'

RSpec.describe TvshowsController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns id 44217 to Vikings Hash" do
      # two hashes returned - not found  & backdrop_path 
      get :show, params:{ id: 44217}
      expect(assigns(:tvshow)).to be_a(Hash)
      expect(:tvshow['name']).to eq "Vikings"
    end
  end

end
