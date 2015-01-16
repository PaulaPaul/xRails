require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  test "should get radioselect" do
    get :radioselect
    assert_response :success
  end

  test "should get yourbuses" do
    get :yourbuses
    assert_response :success
  end

  test "should get yourbuses_dropdown" do
    get :yourbuses_dropdown
    assert_response :success
  end

end
