require "spec_helper"

describe TrafficSourcesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/traffic_sources" }.should route_to(:controller => "traffic_sources", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/traffic_sources/new" }.should route_to(:controller => "traffic_sources", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/traffic_sources/1" }.should route_to(:controller => "traffic_sources", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/traffic_sources/1/edit" }.should route_to(:controller => "traffic_sources", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/traffic_sources" }.should route_to(:controller => "traffic_sources", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/traffic_sources/1" }.should route_to(:controller => "traffic_sources", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/traffic_sources/1" }.should route_to(:controller => "traffic_sources", :action => "destroy", :id => "1")
    end

  end
end
