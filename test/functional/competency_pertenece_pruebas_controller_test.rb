require 'test_helper'

class CompetencyPertenecePruebasControllerTest < ActionController::TestCase
  setup do
    @competency_pertenece_prueba = competency_pertenece_pruebas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:competency_pertenece_pruebas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create competency_pertenece_prueba" do
    assert_difference('CompetencyPertenecePrueba.count') do
      post :create, competency_pertenece_prueba: { competency_id: @competency_pertenece_prueba.competency_id, prueba_id: @competency_pertenece_prueba.prueba_id }
    end

    assert_redirected_to competency_pertenece_prueba_path(assigns(:competency_pertenece_prueba))
  end

  test "should show competency_pertenece_prueba" do
    get :show, id: @competency_pertenece_prueba
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @competency_pertenece_prueba
    assert_response :success
  end

  test "should update competency_pertenece_prueba" do
    put :update, id: @competency_pertenece_prueba, competency_pertenece_prueba: { competency_id: @competency_pertenece_prueba.competency_id, prueba_id: @competency_pertenece_prueba.prueba_id }
    assert_redirected_to competency_pertenece_prueba_path(assigns(:competency_pertenece_prueba))
  end

  test "should destroy competency_pertenece_prueba" do
    assert_difference('CompetencyPertenecePrueba.count', -1) do
      delete :destroy, id: @competency_pertenece_prueba
    end

    assert_redirected_to competency_pertenece_pruebas_path
  end
end
