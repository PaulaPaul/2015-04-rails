require 'test_helper'

class BlogusersControllerTest < ActionController::TestCase
  setup do
    @bloguser = blogusers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:blogusers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bloguser" do
    assert_difference('Bloguser.count') do
      post :create, bloguser: { name: @bloguser.name }
    end

    assert_redirected_to bloguser_path(assigns(:bloguser))
  end

  test "should show bloguser" do
    get :show, id: @bloguser
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bloguser
    assert_response :success
  end

  test "should update bloguser" do
    patch :update, id: @bloguser, bloguser: { name: @bloguser.name }
    assert_redirected_to bloguser_path(assigns(:bloguser))
  end

  test "should destroy bloguser" do
    assert_difference('Bloguser.count', -1) do
      delete :destroy, id: @bloguser
    end

    assert_redirected_to blogusers_path
  end
end
