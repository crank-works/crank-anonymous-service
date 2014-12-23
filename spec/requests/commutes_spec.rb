require 'rails_helper'

RSpec.describe "Commutes", :type => :request do
  describe "GET /commutes" do
    it "works! (now write some real specs)" do
      get commutes_path
      expect(response.status).to be(200)
    end
  end
end
