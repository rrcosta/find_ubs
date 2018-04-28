require 'rails_helper'

RSpec.describe "Originubs", type: :request do
  describe "GET /originubs" do
    it "works! (now write some real specs)" do
      get originubs_path
      expect(response).to have_http_status(200)
    end
  end
end
