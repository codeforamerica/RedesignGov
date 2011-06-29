require 'test_helper'

class ColorsControllerTest < ActionController::TestCase
  setup do
    @color = colors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:colors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create color" do
    assert_difference('Color.count') do
      post :create, :color => @color.attributes
    end

    assert_redirected_to color_path(assigns(:color))
  end

  test "should show color" do
    get :show, :id => @color.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @color.to_param
    assert_response :success
  end

  test "should update color" do
    put :update, :id => @color.to_param, :color => @color.attributes
    assert_redirected_to color_path(assigns(:color))
  end

  test "should destroy color" do
    assert_difference('Color.count', -1) do
      delete :destroy, :id => @color.to_param
    end

    assert_redirected_to colors_path
  end
end
