require 'rails_helper'

RSpec.describe "Tweets", type: :request do
  describe "GET /tweets" do
    it "works! (now write some real specs)" do
      get tweets_path
      expect(response).to have_http_status(200)
    end
  end
end
