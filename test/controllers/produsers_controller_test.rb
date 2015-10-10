require 'test_helper'

class ProdusersControllerTest < ActionController::TestCase
  setup do
    @produser = produsers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:produsers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create produser" do
    assert_difference('Produser.count') do
      post :create, produser: { name: @produser.name, password: @produser.password }
    end

    assert_redirected_to produser_path(assigns(:produser))
  end

  test "should show produser" do
    get :show, id: @produser
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @produser
    assert_response :success
  end

  test "should update produser" do
    patch :update, id: @produser, produser: { name: @produser.name, password: @produser.password }
    assert_redirected_to produser_path(assigns(:produser))
  end

  test "should destroy produser" do
    assert_difference('Produser.count', -1) do
      delete :destroy, id: @produser
    end

    assert_redirected_to produsers_path
  end
end
