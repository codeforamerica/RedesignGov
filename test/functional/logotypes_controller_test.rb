require 'test_helper'

class LogotypesControllerTest < ActionController::TestCase
  setup do
    @logotype = logotypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:logotypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create logotype" do
    assert_difference('Logotype.count') do
      post :create, :logotype => @logotype.attributes
    end

    assert_redirected_to logotype_path(assigns(:logotype))
  end

  test "should show logotype" do
    get :show, :id => @logotype.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @logotype.to_param
    assert_response :success
  end

  test "should update logotype" do
    put :update, :id => @logotype.to_param, :logotype => @logotype.attributes
    assert_redirected_to logotype_path(assigns(:logotype))
  end

  test "should destroy logotype" do
    assert_difference('Logotype.count', -1) do
      delete :destroy, :id => @logotype.to_param
    end

    assert_redirected_to logotypes_path
  end
end
