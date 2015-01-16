require 'test_helper'

class CharlotteHornetsControllerTest < ActionController::TestCase
  setup do
    @charlotte_hornet = charlotte_hornets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:charlotte_hornets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create charlotte_hornet" do
    assert_difference('CharlotteHornet.count') do
      post :create, charlotte_hornet: { college: @charlotte_hornet.college, name: @charlotte_hornet.name, number: @charlotte_hornet.number, position: @charlotte_hornet.position }
    end

    assert_redirected_to charlotte_hornet_path(assigns(:charlotte_hornet))
  end

  test "should show charlotte_hornet" do
    get :show, id: @charlotte_hornet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @charlotte_hornet
    assert_response :success
  end

  test "should update charlotte_hornet" do
    patch :update, id: @charlotte_hornet, charlotte_hornet: { college: @charlotte_hornet.college, name: @charlotte_hornet.name, number: @charlotte_hornet.number, position: @charlotte_hornet.position }
    assert_redirected_to charlotte_hornet_path(assigns(:charlotte_hornet))
  end

  test "should destroy charlotte_hornet" do
    assert_difference('CharlotteHornet.count', -1) do
      delete :destroy, id: @charlotte_hornet
    end

    assert_redirected_to charlotte_hornets_path
  end
end
