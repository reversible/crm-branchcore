require 'test_helper'

class AccessControllerTest < ActionController::TestCase
  test "should get login" do
    get :login
    assert_response :success
  end

  test "should get sing_up" do
    get :sing_up
    assert_response :success
  end

end
