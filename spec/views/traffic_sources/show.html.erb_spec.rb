require 'spec_helper'

describe "traffic_sources/show.html.erb" do
  before(:each) do
    @traffic_source = assign(:traffic_source, stub_model(TrafficSource,
      :name => "Name",
      :type => "Type",
      :user_account => "User Account"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Type/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/User Account/)
  end
end
