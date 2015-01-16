require 'test_helper'

class PetclubMembershipsControllerTest < ActionController::TestCase
  setup do
    @petclub_membership = petclub_memberships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:petclub_memberships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create petclub_membership" do
    assert_difference('PetclubMembership.count') do
      post :create, petclub_membership: { owner_id: @petclub_membership.owner_id, pet_name: @petclub_membership.pet_name, petclub_id: @petclub_membership.petclub_id, primary_contact: @petclub_membership.primary_contact }
    end

    assert_redirected_to petclub_membership_path(assigns(:petclub_membership))
  end

  test "should show petclub_membership" do
    get :show, id: @petclub_membership
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @petclub_membership
    assert_response :success
  end

  test "should update petclub_membership" do
    patch :update, id: @petclub_membership, petclub_membership: { owner_id: @petclub_membership.owner_id, pet_name: @petclub_membership.pet_name, petclub_id: @petclub_membership.petclub_id, primary_contact: @petclub_membership.primary_contact }
    assert_redirected_to petclub_membership_path(assigns(:petclub_membership))
  end

  test "should destroy petclub_membership" do
    assert_difference('PetclubMembership.count', -1) do
      delete :destroy, id: @petclub_membership
    end

    assert_redirected_to petclub_memberships_path
  end
end
