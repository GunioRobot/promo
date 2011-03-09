require 'spec_helper'

describe "traffic_sources/edit.html.erb" do
  before(:each) do
    @traffic_source = assign(:traffic_source, stub_model(TrafficSource,
      :name => "MyString",
      :type => "MyString",
      :user_account => "MyString"
    ))
  end

  it "renders the edit traffic_source form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => traffic_sources_path(@traffic_source), :method => "post" do
      assert_select "input#traffic_source_name", :name => "traffic_source[name]"
      assert_select "input#traffic_source_type", :name => "traffic_source[type]"
      assert_select "input#traffic_source_user_account", :name => "traffic_source[user_account]"
    end
  end
end
