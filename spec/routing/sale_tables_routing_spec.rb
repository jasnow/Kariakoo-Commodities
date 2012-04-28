require "spec_helper"

describe SaleTablesController do
  describe "routing" do

    it "routes to #index" do
      get("/sale_tables").should route_to("sale_tables#index")
    end

    it "routes to #new" do
      get("/sale_tables/new").should route_to("sale_tables#new")
    end

    it "routes to #show" do
      get("/sale_tables/1").should route_to("sale_tables#show", :id => "1")
    end

    it "routes to #edit" do
      get("/sale_tables/1/edit").should route_to("sale_tables#edit", :id => "1")
    end

    it "routes to #create" do
      post("/sale_tables").should route_to("sale_tables#create")
    end

    it "routes to #update" do
      put("/sale_tables/1").should route_to("sale_tables#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/sale_tables/1").should route_to("sale_tables#destroy", :id => "1")
    end

  end
end
