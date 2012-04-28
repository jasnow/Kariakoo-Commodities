require 'spec_helper'

describe "save_tables/show" do
  before(:each) do
    @save_table = assign(:save_table, stub_model(SaveTable,
      :market_type => "Market Type",
      :location => "Location",
      :volume => 1,
      :unit => "Unit",
      :string => "String",
      :quality => "Quality",
      :commodity => "Commodity",
      :price_received => 2,
      :price_receiptUnit => "Price Receipt Unit"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Market Type/)
    rendered.should match(/Location/)
    rendered.should match(/1/)
    rendered.should match(/Unit/)
    rendered.should match(/String/)
    rendered.should match(/Quality/)
    rendered.should match(/Commodity/)
    rendered.should match(/2/)
    rendered.should match(/Price Receipt Unit/)
  end
end
