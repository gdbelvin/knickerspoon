require 'test_helper'

class DescriptiveAddressesControllerTest < ActionController::TestCase
  setup do
    @descriptive_address = descriptive_addresses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:descriptive_addresses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create descriptive_address" do
    assert_difference('DescriptiveAddress.count') do
      post :create, descriptive_address: { country: @descriptive_address.country, person: @descriptive_address.person }
    end

    assert_redirected_to descriptive_address_path(assigns(:descriptive_address))
  end

  test "should show descriptive_address" do
    get :show, id: @descriptive_address
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @descriptive_address
    assert_response :success
  end

  test "should update descriptive_address" do
    put :update, id: @descriptive_address, descriptive_address: { country: @descriptive_address.country, person: @descriptive_address.person }
    assert_redirected_to descriptive_address_path(assigns(:descriptive_address))
  end

  test "should destroy descriptive_address" do
    assert_difference('DescriptiveAddress.count', -1) do
      delete :destroy, id: @descriptive_address
    end

    assert_redirected_to descriptive_addresses_path
  end
end
