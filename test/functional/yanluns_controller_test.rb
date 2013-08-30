require 'test_helper'

class YanlunsControllerTest < ActionController::TestCase
  setup do
    @yanlun = yanluns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:yanluns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create yanlun" do
    assert_difference('Yanlun.count') do
      post :create, yanlun: { content: @yanlun.content, title: @yanlun.title }
    end

    assert_redirected_to yanlun_path(assigns(:yanlun))
  end

  test "should show yanlun" do
    get :show, id: @yanlun
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @yanlun
    assert_response :success
  end

  test "should update yanlun" do
    put :update, id: @yanlun, yanlun: { content: @yanlun.content, title: @yanlun.title }
    assert_redirected_to yanlun_path(assigns(:yanlun))
  end

  test "should destroy yanlun" do
    assert_difference('Yanlun.count', -1) do
      delete :destroy, id: @yanlun
    end

    assert_redirected_to yanluns_path
  end
end
