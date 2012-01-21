require 'spec_helper'

describe "locations/show" do
  before(:each) do
    @location = assign(:location, stub_model(Location,
      :name => "Name",
      :region => "Region",
      :district => "District",
      :ward => "Ward",
      :town => "Town"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Region/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/District/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Ward/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Town/)
  end
end
