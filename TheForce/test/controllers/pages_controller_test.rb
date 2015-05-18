require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get planets" do
    get :planets
    assert_response :success
  end

  test "should get spaceships" do
    get :spaceships
    assert_response :success
  end

  test "should get vehicles" do
    get :vehicles
    assert_response :success
  end

  test "should get people" do
    get :people
    assert_response :success
  end

  test "should get films" do
    get :films
    assert_response :success
  end

  test "should get species" do
    get :species
    assert_response :success
  end

end
