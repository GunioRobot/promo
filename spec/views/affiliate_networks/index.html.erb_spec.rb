require 'spec_helper'

describe "affiliate_networks/index.html.erb" do
  before(:each) do
    assign(:affiliate_networks, [
      stub_model(AffiliateNetwork,
        :name => "Name"
      ),
      stub_model(AffiliateNetwork,
        :name => "Name"
      )
    ])
  end

  it "renders a list of affiliate_networks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
