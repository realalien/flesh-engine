require 'spec_helper'

describe NewsTaggerController do

  describe "GET 'browse'" do
    it "returns http success" do
      get 'browse'
      response.should be_success
    end
  end

  describe "GET 'tag'" do
    it "returns http success" do
      get 'tag'
      response.should be_success
    end
  end

end
