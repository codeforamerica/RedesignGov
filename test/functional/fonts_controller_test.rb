require 'test_helper'

class FontsControllerTest < ActionController::TestCase
  setup do
    @font = fonts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fonts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create font" do
    assert_difference('Font.count') do
      post :create, :font => @font.attributes
    end

    assert_redirected_to font_path(assigns(:font))
  end

  test "should show font" do
    get :show, :id => @font.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @font.to_param
    assert_response :success
  end

  test "should update font" do
    put :update, :id => @font.to_param, :font => @font.attributes
    assert_redirected_to font_path(assigns(:font))
  end

  test "should destroy font" do
    assert_difference('Font.count', -1) do
      delete :destroy, :id => @font.to_param
    end

    assert_redirected_to fonts_path
  end
end
