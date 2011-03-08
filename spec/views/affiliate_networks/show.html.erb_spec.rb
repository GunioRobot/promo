require 'spec_helper'

describe "affiliate_networks/show.html.erb" do
  before(:each) do
    @affiliate_network = assign(:affiliate_network, stub_model(AffiliateNetwork,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
