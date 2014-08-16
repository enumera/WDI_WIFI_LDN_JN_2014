require 'test_helper'

class WifisControllerTest < ActionController::TestCase
  setup do
    @wifi = wifis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wifis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wifi" do
    assert_difference('Wifi.count') do
      post :create, wifi: { address_line_1: @wifi.address_line_1, address_line_2: @wifi.address_line_2, business_name: @wifi.business_name, city: @wifi.city, country: @wifi.country, free_or_paid: @wifi.free_or_paid, name: @wifi.name, password: @wifi.password, phone: @wifi.phone, postcode: @wifi.postcode, share_scope: @wifi.share_scope }
    end

    assert_redirected_to wifi_path(assigns(:wifi))
  end

  test "should show wifi" do
    get :show, id: @wifi
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wifi
    assert_response :success
  end

  test "should update wifi" do
    put :update, id: @wifi, wifi: { address_line_1: @wifi.address_line_1, address_line_2: @wifi.address_line_2, business_name: @wifi.business_name, city: @wifi.city, country: @wifi.country, free_or_paid: @wifi.free_or_paid, name: @wifi.name, password: @wifi.password, phone: @wifi.phone, postcode: @wifi.postcode, share_scope: @wifi.share_scope }
    assert_redirected_to wifi_path(assigns(:wifi))
  end

  test "should destroy wifi" do
    assert_difference('Wifi.count', -1) do
      delete :destroy, id: @wifi
    end

    assert_redirected_to wifis_path
  end
end
