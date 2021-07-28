require 'rails_helper'

RSpec.describe "CardReviews", type: :request do
  describe "GET /show" do
    it "returns http success" do
      get "/card_reviews/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/card_reviews/create"
      expect(response).to have_http_status(:success)
    end
  end

end
