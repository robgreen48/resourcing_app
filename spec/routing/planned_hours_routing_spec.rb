require "spec_helper"

describe PlannedHoursController do
  describe "routing" do

    it "routes to #index" do
      get("/planned_hours").should route_to("planned_hours#index")
    end

    it "routes to #new" do
      get("/planned_hours/new").should route_to("planned_hours#new")
    end

    it "routes to #show" do
      get("/planned_hours/1").should route_to("planned_hours#show", :id => "1")
    end

    it "routes to #edit" do
      get("/planned_hours/1/edit").should route_to("planned_hours#edit", :id => "1")
    end

    it "routes to #create" do
      post("/planned_hours").should route_to("planned_hours#create")
    end

    it "routes to #update" do
      put("/planned_hours/1").should route_to("planned_hours#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/planned_hours/1").should route_to("planned_hours#destroy", :id => "1")
    end

  end
end
