require 'test_helper'

class EvaluationPerteneceAsignaturasControllerTest < ActionController::TestCase
  setup do
    @evaluation_pertenece_asignatura = evaluation_pertenece_asignaturas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:evaluation_pertenece_asignaturas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create evaluation_pertenece_asignatura" do
    assert_difference('EvaluationPerteneceAsignatura.count') do
      post :create, evaluation_pertenece_asignatura: { asignatura_id: @evaluation_pertenece_asignatura.asignatura_id, tipoprueba: @evaluation_pertenece_asignatura.tipoprueba }
    end

    assert_redirected_to evaluation_pertenece_asignatura_path(assigns(:evaluation_pertenece_asignatura))
  end

  test "should show evaluation_pertenece_asignatura" do
    get :show, id: @evaluation_pertenece_asignatura
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @evaluation_pertenece_asignatura
    assert_response :success
  end

  test "should update evaluation_pertenece_asignatura" do
    put :update, id: @evaluation_pertenece_asignatura, evaluation_pertenece_asignatura: { asignatura_id: @evaluation_pertenece_asignatura.asignatura_id, tipoprueba: @evaluation_pertenece_asignatura.tipoprueba }
    assert_redirected_to evaluation_pertenece_asignatura_path(assigns(:evaluation_pertenece_asignatura))
  end

  test "should destroy evaluation_pertenece_asignatura" do
    assert_difference('EvaluationPerteneceAsignatura.count', -1) do
      delete :destroy, id: @evaluation_pertenece_asignatura
    end

    assert_redirected_to evaluation_pertenece_asignaturas_path
  end
end
