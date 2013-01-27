require 'test_helper'

class GeocodeAddressesControllerTest < ActionController::TestCase
  setup do
    @geocode_address = geocode_addresses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:geocode_addresses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create geocode_address" do
    assert_difference('GeocodeAddress.count') do
      post :create, geocode_address: { lat: @geocode_address.lat, long: @geocode_address.long, person: @geocode_address.person }
    end

    assert_redirected_to geocode_address_path(assigns(:geocode_address))
  end

  test "should show geocode_address" do
    get :show, id: @geocode_address
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @geocode_address
    assert_response :success
  end

  test "should update geocode_address" do
    put :update, id: @geocode_address, geocode_address: { lat: @geocode_address.lat, long: @geocode_address.long, person: @geocode_address.person }
    assert_redirected_to geocode_address_path(assigns(:geocode_address))
  end

  test "should destroy geocode_address" do
    assert_difference('GeocodeAddress.count', -1) do
      delete :destroy, id: @geocode_address
    end

    assert_redirected_to geocode_addresses_path
  end
end
