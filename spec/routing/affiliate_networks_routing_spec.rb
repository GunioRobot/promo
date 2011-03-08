require "spec_helper"

describe AffiliateNetworksController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/affiliate_networks" }.should route_to(:controller => "affiliate_networks", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/affiliate_networks/new" }.should route_to(:controller => "affiliate_networks", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/affiliate_networks/1" }.should route_to(:controller => "affiliate_networks", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/affiliate_networks/1/edit" }.should route_to(:controller => "affiliate_networks", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/affiliate_networks" }.should route_to(:controller => "affiliate_networks", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/affiliate_networks/1" }.should route_to(:controller => "affiliate_networks", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/affiliate_networks/1" }.should route_to(:controller => "affiliate_networks", :action => "destroy", :id => "1")
    end

  end
end
