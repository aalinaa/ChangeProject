require 'test_helper'

class FeetbacksControllerTest < ActionController::TestCase
  setup do
    @feetback = feetbacks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:feetbacks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create feetback" do
    assert_difference('Feetback.count') do
      post :create, feetback: { mark: @feetback.mark, text: @feetback.text, user_id: @feetback.user_id }
    end

    assert_redirected_to feetback_path(assigns(:feetback))
  end

  test "should show feetback" do
    get :show, id: @feetback
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @feetback
    assert_response :success
  end

  test "should update feetback" do
    patch :update, id: @feetback, feetback: { mark: @feetback.mark, text: @feetback.text, user_id: @feetback.user_id }
    assert_redirected_to feetback_path(assigns(:feetback))
  end

  test "should destroy feetback" do
    assert_difference('Feetback.count', -1) do
      delete :destroy, id: @feetback
    end

    assert_redirected_to feetbacks_path
  end
end
