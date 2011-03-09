require 'spec_helper'

describe "traffic_sources/index.html.erb" do
  before(:each) do
    assign(:traffic_sources, [
      stub_model(TrafficSource,
        :name => "Name",
        :type => "Type",
        :user_account => "User Account"
      ),
      stub_model(TrafficSource,
        :name => "Name",
        :type => "Type",
        :user_account => "User Account"
      )
    ])
  end

  it "renders a list of traffic_sources" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "User Account".to_s, :count => 2
  end
end
