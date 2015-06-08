require 'test_helper'

class AssignmentGradesControllerTest < ActionController::TestCase
  setup do
    @assignment_grade = assignment_grades(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:assignment_grades)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create assignment_grade" do
    assert_difference('AssignmentGrade.count') do
      post :create, assignment_grade: { assignment: @assignment_grade.assignment, course_id: @assignment_grade.course_id, letter_grade: @assignment_grade.letter_grade, percent_grade: @assignment_grade.percent_grade, student_id: @assignment_grade.student_id }
    end

    assert_redirected_to assignment_grade_path(assigns(:assignment_grade))
  end

  test "should show assignment_grade" do
    get :show, id: @assignment_grade
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @assignment_grade
    assert_response :success
  end

  test "should update assignment_grade" do
    patch :update, id: @assignment_grade, assignment_grade: { assignment: @assignment_grade.assignment, course_id: @assignment_grade.course_id, letter_grade: @assignment_grade.letter_grade, percent_grade: @assignment_grade.percent_grade, student_id: @assignment_grade.student_id }
    assert_redirected_to assignment_grade_path(assigns(:assignment_grade))
  end

  test "should destroy assignment_grade" do
    assert_difference('AssignmentGrade.count', -1) do
      delete :destroy, id: @assignment_grade
    end

    assert_redirected_to assignment_grades_path
  end
end
