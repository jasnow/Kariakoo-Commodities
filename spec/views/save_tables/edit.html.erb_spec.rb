require 'spec_helper'

describe "save_tables/edit" do
  before(:each) do
    @save_table = assign(:save_table, stub_model(SaveTable,
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

  it "renders the edit save_table form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => save_tables_path(@save_table), :method => "post" do
      assert_select "input#save_table_market_type", :name => "save_table[market_type]"
      assert_select "input#save_table_location", :name => "save_table[location]"
      assert_select "input#save_table_volume", :name => "save_table[volume]"
      assert_select "input#save_table_unit", :name => "save_table[unit]"
      assert_select "input#save_table_string", :name => "save_table[string]"
      assert_select "input#save_table_quality", :name => "save_table[quality]"
      assert_select "input#save_table_commodity", :name => "save_table[commodity]"
      assert_select "input#save_table_price_received", :name => "save_table[price_received]"
      assert_select "input#save_table_price_receiptUnit", :name => "save_table[price_receiptUnit]"
    end
  end
end
