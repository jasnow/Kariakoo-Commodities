require 'spec_helper'

describe "commodities/edit" do
  before(:each) do
    @commodity = assign(:commodity, stub_model(Commodity,
      :nameEnglish => "MyString",
      :nameSwahili => "MyString",
      :quality => "MyString"
    ))
  end

  it "renders the edit commodity form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => commodities_path(@commodity), :method => "post" do
      assert_select "input#commodity_nameEnglish", :name => "commodity[nameEnglish]"
      assert_select "input#commodity_nameSwahili", :name => "commodity[nameSwahili]"
      assert_select "input#commodity_quality", :name => "commodity[quality]"
    end
  end
end
