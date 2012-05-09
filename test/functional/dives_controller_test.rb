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
      post :create, :dive => { :bottomtime => @dive.bottomtime, :city => @dive.city, :comments => @dive.comments, :country => @dive.country, :date => @dive.date, :depth => @dive.depth, :description => @dive.description, :directions => @dive.directions, :endtime => @dive.endtime, :equipment => @dive.equipment, :latitude => @dive.latitude, :longitude => @dive.longitude, :name => @dive.name, :rating => @dive.rating, :starttime => @dive.starttime, :state => @dive.state, :temperature => @dive.temperature, :units => @dive.units, :watertemp => @dive.watertemp, :weather => @dive.weather, :weight => @dive.weight }
    end

    assert_redirected_to dive_path(assigns(:dive))
  end

  test "should show dive" do
    get :show, :id => @dive
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @dive
    assert_response :success
  end

  test "should update dive" do
    put :update, :id => @dive, :dive => { :bottomtime => @dive.bottomtime, :city => @dive.city, :comments => @dive.comments, :country => @dive.country, :date => @dive.date, :depth => @dive.depth, :description => @dive.description, :directions => @dive.directions, :endtime => @dive.endtime, :equipment => @dive.equipment, :latitude => @dive.latitude, :longitude => @dive.longitude, :name => @dive.name, :rating => @dive.rating, :starttime => @dive.starttime, :state => @dive.state, :temperature => @dive.temperature, :units => @dive.units, :watertemp => @dive.watertemp, :weather => @dive.weather, :weight => @dive.weight }
    assert_redirected_to dive_path(assigns(:dive))
  end

  test "should destroy dive" do
    assert_difference('Dive.count', -1) do
      delete :destroy, :id => @dive
    end

    assert_redirected_to dives_path
  end
end
