require 'test_helper'

class AffiliateNetworksControllerTest < ActionController::TestCase
  setup do
    @affiliate_network = affiliate_networks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:affiliate_networks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create affiliate_network" do
    assert_difference('AffiliateNetwork.count') do
      post :create, :affiliate_network => @affiliate_network.attributes
    end

    assert_redirected_to affiliate_network_path(assigns(:affiliate_network))
  end

  test "should show affiliate_network" do
    get :show, :id => @affiliate_network.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @affiliate_network.to_param
    assert_response :success
  end

  test "should update affiliate_network" do
    put :update, :id => @affiliate_network.to_param, :affiliate_network => @affiliate_network.attributes
    assert_redirected_to affiliate_network_path(assigns(:affiliate_network))
  end

  test "should destroy affiliate_network" do
    assert_difference('AffiliateNetwork.count', -1) do
      delete :destroy, :id => @affiliate_network.to_param
    end

    assert_redirected_to affiliate_networks_path
  end
end
