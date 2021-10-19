require "test_helper"

class DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get Account" do
    get dashboard_Account_url
    assert_response :success
  end

  test "should get ToDos" do
    get dashboard_ToDos_url
    assert_response :success
  end

  test "should get Articles" do
    get dashboard_Articles_url
    assert_response :success
  end

  test "should get Products" do
    get dashboard_Products_url
    assert_response :success
  end
end
