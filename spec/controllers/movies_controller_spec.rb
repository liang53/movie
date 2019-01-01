require 'rails_helper'

RSpec.describe MoviesController, type: :controller do

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
    it "returns id 297802 to Aquaman Hash" do
      # two hashes returned - not found  & backdrop_path 
      get :show, params:{ id: 297802}
      expect(assigns(:movie)).to be_a(Hash)
      expect(:movie['name']).to eq "Aquaman"
    end
  end

end
