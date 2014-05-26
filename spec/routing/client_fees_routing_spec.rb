require "spec_helper"

describe ClientFeesController do
  describe "routing" do

    it "routes to #index" do
      get("/client_fees").should route_to("client_fees#index")
    end

    it "routes to #new" do
      get("/client_fees/new").should route_to("client_fees#new")
    end

    it "routes to #show" do
      get("/client_fees/1").should route_to("client_fees#show", :id => "1")
    end

    it "routes to #edit" do
      get("/client_fees/1/edit").should route_to("client_fees#edit", :id => "1")
    end

    it "routes to #create" do
      post("/client_fees").should route_to("client_fees#create")
    end

    it "routes to #update" do
      put("/client_fees/1").should route_to("client_fees#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/client_fees/1").should route_to("client_fees#destroy", :id => "1")
    end

  end
end
