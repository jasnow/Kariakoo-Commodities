require 'spec_helper'

describe "commodities/edit" do
  before(:each) do
    @commodity = assign(:commodity, stub_model(Commodity,
      :name => "MyString",
      :unit_id => 1
    ))
  end

  it "renders the edit commodity form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => commodities_path(@commodity), :method => "post" do
      assert_select "input#commodity_name", :name => "commodity[name]"
      assert_select "input#commodity_unit_id", :name => "commodity[unit_id]"
    end
  end
end