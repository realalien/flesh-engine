require "spec_helper"

describe AccountPoisController do
  describe "routing" do

    it "routes to #index" do
      get("/account_pois").should route_to("account_pois#index")
    end

    it "routes to #new" do
      get("/account_pois/new").should route_to("account_pois#new")
    end

    it "routes to #show" do
      get("/account_pois/1").should route_to("account_pois#show", :id => "1")
    end

    it "routes to #edit" do
      get("/account_pois/1/edit").should route_to("account_pois#edit", :id => "1")
    end

    it "routes to #create" do
      post("/account_pois").should route_to("account_pois#create")
    end

    it "routes to #update" do
      put("/account_pois/1").should route_to("account_pois#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/account_pois/1").should route_to("account_pois#destroy", :id => "1")
    end

  end
end
