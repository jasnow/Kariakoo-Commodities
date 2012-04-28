require 'spec_helper'

describe "save_tables/index" do
  before(:each) do
    assign(:save_tables, [
      stub_model(SaveTable,
        :market_type => "Market Type",
        :location => "Location",
        :volume => 1,
        :unit => "Unit",
        :string => "String",
        :quality => "Quality",
        :commodity => "Commodity",
        :price_received => 2,
        :price_receiptUnit => "Price Receipt Unit"
      ),
      stub_model(SaveTable,
        :market_type => "Market Type",
        :location => "Location",
        :volume => 1,
        :unit => "Unit",
        :string => "String",
        :quality => "Quality",
        :commodity => "Commodity",
        :price_received => 2,
        :price_receiptUnit => "Price Receipt Unit"
      )
    ])
  end

  it "renders a list of save_tables" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Market Type".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Unit".to_s, :count => 2
    assert_select "tr>td", :text => "String".to_s, :count => 2
    assert_select "tr>td", :text => "Quality".to_s, :count => 2
    assert_select "tr>td", :text => "Commodity".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Price Receipt Unit".to_s, :count => 2
  end
end