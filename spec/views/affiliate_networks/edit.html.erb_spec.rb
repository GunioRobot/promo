require 'spec_helper'

describe "affiliate_networks/edit.html.erb" do
  before(:each) do
    @affiliate_network = assign(:affiliate_network, stub_model(AffiliateNetwork,
      :name => "MyString"
    ))
  end

  it "renders the edit affiliate_network form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => affiliate_networks_path(@affiliate_network), :method => "post" do
      assert_select "input#affiliate_network_name", :name => "affiliate_network[name]"
    end
  end
end
