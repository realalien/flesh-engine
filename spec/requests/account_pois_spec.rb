require 'spec_helper'

describe "AccountPois" do
  describe "GET /account_pois" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get account_pois_path
      response.status.should be(200)
    end
  end
end
