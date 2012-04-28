require "spec_helper"

describe SaveTablesController do
  describe "routing" do

    it "routes to #index" do
      get("/save_tables").should route_to("save_tables#index")
    end

    it "routes to #new" do
      get("/save_tables/new").should route_to("save_tables#new")
    end

    it "routes to #show" do
      get("/save_tables/1").should route_to("save_tables#show", :id => "1")
    end

    it "routes to #edit" do
      get("/save_tables/1/edit").should route_to("save_tables#edit", :id => "1")
    end

    it "routes to #create" do
      post("/save_tables").should route_to("save_tables#create")
    end

    it "routes to #update" do
      put("/save_tables/1").should route_to("save_tables#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/save_tables/1").should route_to("save_tables#destroy", :id => "1")
    end

  end
end
