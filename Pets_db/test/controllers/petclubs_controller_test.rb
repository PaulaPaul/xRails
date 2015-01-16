require 'test_helper'

class PetclubsControllerTest < ActionController::TestCase
  setup do
    @petclub = petclubs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:petclubs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create petclub" do
    assert_difference('Petclub.count') do
      post :create, petclub: { description: @petclub.description, name: @petclub.name }
    end

    assert_redirected_to petclub_path(assigns(:petclub))
  end

  test "should show petclub" do
    get :show, id: @petclub
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @petclub
    assert_response :success
  end

  test "should update petclub" do
    patch :update, id: @petclub, petclub: { description: @petclub.description, name: @petclub.name }
    assert_redirected_to petclub_path(assigns(:petclub))
  end

  test "should destroy petclub" do
    assert_difference('Petclub.count', -1) do
      delete :destroy, id: @petclub
    end

    assert_redirected_to petclubs_path
  end
end
