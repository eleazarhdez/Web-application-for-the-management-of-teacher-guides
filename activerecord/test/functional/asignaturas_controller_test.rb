require 'test_helper'

class AsignaturasControllerTest < ActionController::TestCase
  setup do
    @asignatura = asignaturas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:asignaturas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create asignatura" do
    assert_difference('Asignatura.count') do
      post :create, asignatura: { area: @asignatura.area, bibliografia: @asignatura.bibliografia, bloque: @asignatura.bloque, caracter: @asignatura.caracter, codigo: @asignatura.codigo, creditos: @asignatura.creditos, curso: @asignatura.curso, departamento: @asignatura.departamento, duracion: @asignatura.duracion, horario: @asignatura.horario, idioma: @asignatura.idioma, itinerario: @asignatura.itinerario, nombre: @asignatura.nombre, perfil: @asignatura.perfil, rama: @asignatura.rama, resultados: @asignatura.resultados, titulacion: @asignatura.titulacion, web: @asignatura.web }
    end

    assert_redirected_to asignatura_path(assigns(:asignatura))
  end

  test "should show asignatura" do
    get :show, id: @asignatura
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @asignatura
    assert_response :success
  end

  test "should update asignatura" do
    put :update, id: @asignatura, asignatura: { area: @asignatura.area, bibliografia: @asignatura.bibliografia, bloque: @asignatura.bloque, caracter: @asignatura.caracter, codigo: @asignatura.codigo, creditos: @asignatura.creditos, curso: @asignatura.curso, departamento: @asignatura.departamento, duracion: @asignatura.duracion, horario: @asignatura.horario, idioma: @asignatura.idioma, itinerario: @asignatura.itinerario, nombre: @asignatura.nombre, perfil: @asignatura.perfil, rama: @asignatura.rama, resultados: @asignatura.resultados, titulacion: @asignatura.titulacion, web: @asignatura.web }
    assert_redirected_to asignatura_path(assigns(:asignatura))
  end

  test "should destroy asignatura" do
    assert_difference('Asignatura.count', -1) do
      delete :destroy, id: @asignatura
    end

    assert_redirected_to asignaturas_path
  end
end
