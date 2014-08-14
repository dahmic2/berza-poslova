require 'spec_helper'

describe "Problems" do
  describe "GET /problems" do
    it "works! (now write some real specs)" do
      get problems_path
      expect(response.status).to be(200)
    end
  end
end
