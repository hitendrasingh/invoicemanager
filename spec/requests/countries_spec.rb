require 'rails_helper'

RSpec.describe "Countries", :type => :request do
  describe "GET /countries" do
    it "works! (now write some real specs)" do
      get countries_path
      expect(response.status).to be(200)
    end
  end
end
