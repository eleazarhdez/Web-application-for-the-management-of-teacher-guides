require 'test_helper'

class ProfesorPerteneceAsignaturasControllerTest < ActionController::TestCase
  setup do
    @profesor_pertenece_asignatura = profesor_pertenece_asignaturas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:profesor_pertenece_asignaturas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create profesor_pertenece_asignatura" do
    assert_difference('ProfesorPerteneceAsignatura.count') do
      post :create, profesor_pertenece_asignatura: { codigo: @profesor_pertenece_asignatura.codigo, profesor: @profesor_pertenece_asignatura.profesor, rol: @profesor_pertenece_asignatura.rol }
    end

    assert_redirected_to profesor_pertenece_asignatura_path(assigns(:profesor_pertenece_asignatura))
  end

  test "should show profesor_pertenece_asignatura" do
    get :show, id: @profesor_pertenece_asignatura
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @profesor_pertenece_asignatura
    assert_response :success
  end

  test "should update profesor_pertenece_asignatura" do
    put :update, id: @profesor_pertenece_asignatura, profesor_pertenece_asignatura: { codigo: @profesor_pertenece_asignatura.codigo, profesor: @profesor_pertenece_asignatura.profesor, rol: @profesor_pertenece_asignatura.rol }
    assert_redirected_to profesor_pertenece_asignatura_path(assigns(:profesor_pertenece_asignatura))
  end

  test "should destroy profesor_pertenece_asignatura" do
    assert_difference('ProfesorPerteneceAsignatura.count', -1) do
      delete :destroy, id: @profesor_pertenece_asignatura
    end

    assert_redirected_to profesor_pertenece_asignaturas_path
  end
end
