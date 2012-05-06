require 'test_helper'

class DivesControllerTest < ActionController::TestCase
  setup do
    @dive = dives(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dives)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dive" do
    assert_difference('Dive.count') do
      post :create, :dive => @dive.attributes
    end

    assert_redirected_to dive_path(assigns(:dive))
  end

  test "should show dive" do
    get :show, :id => @dive.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @dive.to_param
    assert_response :success
  end

  test "should update dive" do
    put :update, :id => @dive.to_param, :dive => @dive.attributes
    assert_redirected_to dive_path(assigns(:dive))
  end

  test "should destroy dive" do
    assert_difference('Dive.count', -1) do
      delete :destroy, :id => @dive.to_param
    end

    assert_redirected_to dives_path
  end
end
