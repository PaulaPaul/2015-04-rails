require 'test_helper'

class WizmodelsControllerTest < ActionController::TestCase
  setup do
    @wizmodel = wizmodels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wizmodels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wizmodel" do
    assert_difference('Wizmodel.count') do
      post :create, wizmodel: { cheap_color: @wizmodel.cheap_color, cheap_material: @wizmodel.cheap_material, current_step: @wizmodel.current_step, description: @wizmodel.description, expensive_color: @wizmodel.expensive_color, expensive_material: @wizmodel.expensive_material, project_name: @wizmodel.project_name }
    end

    assert_redirected_to wizmodel_path(assigns(:wizmodel))
  end

  test "should show wizmodel" do
    get :show, id: @wizmodel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wizmodel
    assert_response :success
  end

  test "should update wizmodel" do
    patch :update, id: @wizmodel, wizmodel: { cheap_color: @wizmodel.cheap_color, cheap_material: @wizmodel.cheap_material, current_step: @wizmodel.current_step, description: @wizmodel.description, expensive_color: @wizmodel.expensive_color, expensive_material: @wizmodel.expensive_material, project_name: @wizmodel.project_name }
    assert_redirected_to wizmodel_path(assigns(:wizmodel))
  end

  test "should destroy wizmodel" do
    assert_difference('Wizmodel.count', -1) do
      delete :destroy, id: @wizmodel
    end

    assert_redirected_to wizmodels_path
  end
end
