require 'spec_helper'

describe "SaveTables" do
  describe "GET /save_tables" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get save_tables_path
      response.status.should be(200)
    end
  end
end
