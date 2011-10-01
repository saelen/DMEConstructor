require 'test_helper'

class Configuration::ServersControllerTest < ActionController::TestCase
  setup do
    @configuration_server = configuration_servers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:configuration_servers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create configuration_server" do
    assert_difference('Configuration::Server.count') do
      post :create, configuration_server: @configuration_server.attributes
    end

    assert_redirected_to configuration_server_path(assigns(:configuration_server))
  end

  test "should show configuration_server" do
    get :show, id: @configuration_server.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @configuration_server.to_param
    assert_response :success
  end

  test "should update configuration_server" do
    put :update, id: @configuration_server.to_param, configuration_server: @configuration_server.attributes
    assert_redirected_to configuration_server_path(assigns(:configuration_server))
  end

  test "should destroy configuration_server" do
    assert_difference('Configuration::Server.count', -1) do
      delete :destroy, id: @configuration_server.to_param
    end

    assert_redirected_to configuration_servers_path
  end
end
