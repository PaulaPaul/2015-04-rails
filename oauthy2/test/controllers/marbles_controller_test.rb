require 'test_helper'

class MarblesControllerTest < ActionController::TestCase
  setup do
    @marble = marbles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:marbles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create marble" do
    assert_difference('Marble.count') do
      post :create, marble: { color: @marble.color, name: @marble.name, person_id: @marble.person_id }
    end

    assert_redirected_to marble_path(assigns(:marble))
  end

  test "should show marble" do
    get :show, id: @marble
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @marble
    assert_response :success
  end

  test "should update marble" do
    patch :update, id: @marble, marble: { color: @marble.color, name: @marble.name, person_id: @marble.person_id }
    assert_redirected_to marble_path(assigns(:marble))
  end

  test "should destroy marble" do
    assert_difference('Marble.count', -1) do
      delete :destroy, id: @marble
    end

    assert_redirected_to marbles_path
  end
end
