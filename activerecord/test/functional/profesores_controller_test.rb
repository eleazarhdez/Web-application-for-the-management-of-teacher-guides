require 'test_helper'

class ProfesoresControllerTest < ActionController::TestCase
  setup do
    @profesore = profesores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:profesores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create profesore" do
    assert_difference('Profesore.count') do
      post :create, profesore: { area: @profesore.area, departamento: @profesore.departamento, horario_tutoria: @profesore.horario_tutoria, lugar_tutoria: @profesore.lugar_tutoria, mail: @profesore.mail, nombre: @profesore.nombre, telefono: @profesore.telefono, web: @profesore.web }
    end

    assert_redirected_to profesore_path(assigns(:profesore))
  end

  test "should show profesore" do
    get :show, id: @profesore
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @profesore
    assert_response :success
  end

  test "should update profesore" do
    put :update, id: @profesore, profesore: { area: @profesore.area, departamento: @profesore.departamento, horario_tutoria: @profesore.horario_tutoria, lugar_tutoria: @profesore.lugar_tutoria, mail: @profesore.mail, nombre: @profesore.nombre, telefono: @profesore.telefono, web: @profesore.web }
    assert_redirected_to profesore_path(assigns(:profesore))
  end

  test "should destroy profesore" do
    assert_difference('Profesore.count', -1) do
      delete :destroy, id: @profesore
    end

    assert_redirected_to profesores_path
  end
end
