require 'test_helper'

class CompetencyPerteneceEvaluationsControllerTest < ActionController::TestCase
  setup do
    @competency_pertenece_evaluation = competency_pertenece_evaluations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:competency_pertenece_evaluations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create competency_pertenece_evaluation" do
    assert_difference('CompetencyPerteneceEvaluation.count') do
      post :create, competency_pertenece_evaluation: { competency_id: @competency_pertenece_evaluation.competency_id, evaluation_id: @competency_pertenece_evaluation.evaluation_id }
    end

    assert_redirected_to competency_pertenece_evaluation_path(assigns(:competency_pertenece_evaluation))
  end

  test "should show competency_pertenece_evaluation" do
    get :show, id: @competency_pertenece_evaluation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @competency_pertenece_evaluation
    assert_response :success
  end

  test "should update competency_pertenece_evaluation" do
    put :update, id: @competency_pertenece_evaluation, competency_pertenece_evaluation: { competency_id: @competency_pertenece_evaluation.competency_id, evaluation_id: @competency_pertenece_evaluation.evaluation_id }
    assert_redirected_to competency_pertenece_evaluation_path(assigns(:competency_pertenece_evaluation))
  end

  test "should destroy competency_pertenece_evaluation" do
    assert_difference('CompetencyPerteneceEvaluation.count', -1) do
      delete :destroy, id: @competency_pertenece_evaluation
    end

    assert_redirected_to competency_pertenece_evaluations_path
  end
end
