require 'test_helper'

class BallotMeasuresControllerTest < ActionController::TestCase
  setup do
    @ballot_measure = ballot_measures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ballot_measures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ballot_measure" do
    assert_difference('BallotMeasure.count') do
      post :create, ballot_measure: { funding: @ballot_measure.funding, number: @ballot_measure.number, title: @ballot_measure.title }
    end

    assert_redirected_to ballot_measure_path(assigns(:ballot_measure))
  end

  test "should show ballot_measure" do
    get :show, id: @ballot_measure
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ballot_measure
    assert_response :success
  end

  test "should update ballot_measure" do
    patch :update, id: @ballot_measure, ballot_measure: { funding: @ballot_measure.funding, number: @ballot_measure.number, title: @ballot_measure.title }
    assert_redirected_to ballot_measure_path(assigns(:ballot_measure))
  end

  test "should destroy ballot_measure" do
    assert_difference('BallotMeasure.count', -1) do
      delete :destroy, id: @ballot_measure
    end

    assert_redirected_to ballot_measures_path
  end
end
