require 'spec_helper'

describe "sale_tables/edit" do
  before(:each) do
    @sale_table = assign(:sale_table, stub_model(SaleTable,
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
    ))
  end

  it "renders the edit sale_table form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => sale_tables_path(@sale_table), :method => "post" do
      assert_select "input#sale_table_farmer_name", :name => "sale_table[farmer_name]"
      assert_select "input#sale_table_market_type", :name => "sale_table[market_type]"
      assert_select "input#sale_table_location", :name => "sale_table[location]"
      assert_select "input#sale_table_volume", :name => "sale_table[volume]"
      assert_select "input#sale_table_unit", :name => "sale_table[unit]"
      assert_select "input#sale_table_string", :name => "sale_table[string]"
      assert_select "input#sale_table_quality", :name => "sale_table[quality]"
      assert_select "input#sale_table_commodity", :name => "sale_table[commodity]"
      assert_select "input#sale_table_price_received", :name => "sale_table[price_received]"
      assert_select "input#sale_table_price_receiptUnit", :name => "sale_table[price_receiptUnit]"
    end
  end
end
