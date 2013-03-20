require 'test_helper'

class CompetencyPerteneceAsignaturasControllerTest < ActionController::TestCase
  setup do
    @competency_pertenece_asignatura = competency_pertenece_asignaturas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:competency_pertenece_asignaturas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create competency_pertenece_asignatura" do
    assert_difference('CompetencyPerteneceAsignatura.count') do
      post :create, competency_pertenece_asignatura: { asignatura_id: @competency_pertenece_asignatura.asignatura_id, competency_id: @competency_pertenece_asignatura.competency_id }
    end

    assert_redirected_to competency_pertenece_asignatura_path(assigns(:competency_pertenece_asignatura))
  end

  test "should show competency_pertenece_asignatura" do
    get :show, id: @competency_pertenece_asignatura
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @competency_pertenece_asignatura
    assert_response :success
  end

  test "should update competency_pertenece_asignatura" do
    put :update, id: @competency_pertenece_asignatura, competency_pertenece_asignatura: { asignatura_id: @competency_pertenece_asignatura.asignatura_id, competency_id: @competency_pertenece_asignatura.competency_id }
    assert_redirected_to competency_pertenece_asignatura_path(assigns(:competency_pertenece_asignatura))
  end

  test "should destroy competency_pertenece_asignatura" do
    assert_difference('CompetencyPerteneceAsignatura.count', -1) do
      delete :destroy, id: @competency_pertenece_asignatura
    end

    assert_redirected_to competency_pertenece_asignaturas_path
  end
end
