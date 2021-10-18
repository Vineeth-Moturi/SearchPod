require "test_helper"

class MainControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get main_home_url
    assert_response :success
  end

  test "should get signup" do
    get main_signup_url
    assert_response :success
  end

  test "should get login" do
    get main_login_url
    assert_response :success
  end
end
