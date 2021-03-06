require 'spec_helper'

describe "sales/new" do
  before(:each) do
    assign(:sale, stub_model(Sale,
      :farmer_name => "MyString",
      :market_type => "MyString",
      :location => "MyString",
      :volume => 1,
      :unit => "MyString",
      :string => "MyString",
      :quality => "MyString",
      :commodity => "MyString",
      :price_received => 1,
      :price_receiptUnit => "MyString"
    ).as_new_record)
  end

  it "renders new sale form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => sales_path, :method => "post" do
      assert_select "input#sale_farmer_name", :name => "sale[farmer_name]"
      assert_select "input#sale_market_type", :name => "sale[market_type]"
      assert_select "input#sale_location", :name => "sale[location]"
      assert_select "input#sale_volume", :name => "sale[volume]"
      assert_select "input#sale_unit", :name => "sale[unit]"
      assert_select "input#sale_string", :name => "sale[string]"
      assert_select "input#sale_quality", :name => "sale[quality]"
      assert_select "input#sale_commodity", :name => "sale[commodity]"
      assert_select "input#sale_price_received", :name => "sale[price_received]"
      assert_select "input#sale_price_receiptUnit", :name => "sale[price_receiptUnit]"
    end
  end
end
