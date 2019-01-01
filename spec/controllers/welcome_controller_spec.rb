require 'rails_helper'

# tests don't work because API_KEY has been hidden for Heroku deployment

RSpec.describe WelcomeController, type: :controller do

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

  describe "GET #index" do
    it "sets @tvshows @movies to an array" do
      get :index
      expect(assigns(:tvshows)).to be_a(Array)
      expect(assigns(:movies)).to be_a(Array)
    end
  end

  describe "GET #show" do
    it "sets @search to string and @search_results to array" do
      get :show
      expect(assigns(:search)).to be_nil
      expect(assigns(:search_results)).to be_nil
    end
  end

  describe "GET #show" do
    it "sets @search to string and @search_results to array" do
      get :show, params:{ search: 'vikings'}
      expect(assigns(:search)).to be_a(String)
      expect(assigns(:search_results)).to be_a(Array)
    end
  end

end
