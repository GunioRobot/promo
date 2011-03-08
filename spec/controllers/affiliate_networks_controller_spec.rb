require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe AffiliateNetworksController do

  def mock_affiliate_network(stubs={})
    @mock_affiliate_network ||= mock_model(AffiliateNetwork, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all affiliate_networks as @affiliate_networks" do
      AffiliateNetwork.stub(:all) { [mock_affiliate_network] }
      get :index
      assigns(:affiliate_networks).should eq([mock_affiliate_network])
    end
  end

  describe "GET show" do
    it "assigns the requested affiliate_network as @affiliate_network" do
      AffiliateNetwork.stub(:find).with("37") { mock_affiliate_network }
      get :show, :id => "37"
      assigns(:affiliate_network).should be(mock_affiliate_network)
    end
  end

  describe "GET new" do
    it "assigns a new affiliate_network as @affiliate_network" do
      AffiliateNetwork.stub(:new) { mock_affiliate_network }
      get :new
      assigns(:affiliate_network).should be(mock_affiliate_network)
    end
  end

  describe "GET edit" do
    it "assigns the requested affiliate_network as @affiliate_network" do
      AffiliateNetwork.stub(:find).with("37") { mock_affiliate_network }
      get :edit, :id => "37"
      assigns(:affiliate_network).should be(mock_affiliate_network)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created affiliate_network as @affiliate_network" do
        AffiliateNetwork.stub(:new).with({'these' => 'params'}) { mock_affiliate_network(:save => true) }
        post :create, :affiliate_network => {'these' => 'params'}
        assigns(:affiliate_network).should be(mock_affiliate_network)
      end

      it "redirects to the created affiliate_network" do
        AffiliateNetwork.stub(:new) { mock_affiliate_network(:save => true) }
        post :create, :affiliate_network => {}
        response.should redirect_to(affiliate_network_url(mock_affiliate_network))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved affiliate_network as @affiliate_network" do
        AffiliateNetwork.stub(:new).with({'these' => 'params'}) { mock_affiliate_network(:save => false) }
        post :create, :affiliate_network => {'these' => 'params'}
        assigns(:affiliate_network).should be(mock_affiliate_network)
      end

      it "re-renders the 'new' template" do
        AffiliateNetwork.stub(:new) { mock_affiliate_network(:save => false) }
        post :create, :affiliate_network => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested affiliate_network" do
        AffiliateNetwork.stub(:find).with("37") { mock_affiliate_network }
        mock_affiliate_network.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :affiliate_network => {'these' => 'params'}
      end

      it "assigns the requested affiliate_network as @affiliate_network" do
        AffiliateNetwork.stub(:find) { mock_affiliate_network(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:affiliate_network).should be(mock_affiliate_network)
      end

      it "redirects to the affiliate_network" do
        AffiliateNetwork.stub(:find) { mock_affiliate_network(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(affiliate_network_url(mock_affiliate_network))
      end
    end

    describe "with invalid params" do
      it "assigns the affiliate_network as @affiliate_network" do
        AffiliateNetwork.stub(:find) { mock_affiliate_network(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:affiliate_network).should be(mock_affiliate_network)
      end

      it "re-renders the 'edit' template" do
        AffiliateNetwork.stub(:find) { mock_affiliate_network(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested affiliate_network" do
      AffiliateNetwork.stub(:find).with("37") { mock_affiliate_network }
      mock_affiliate_network.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the affiliate_networks list" do
      AffiliateNetwork.stub(:find) { mock_affiliate_network }
      delete :destroy, :id => "1"
      response.should redirect_to(affiliate_networks_url)
    end
  end

end