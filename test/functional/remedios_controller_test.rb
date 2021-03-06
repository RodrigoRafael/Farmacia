require 'test_helper'

class RemediosControllerTest < ActionController::TestCase
  setup do
    @remedio = remedios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:remedios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create remedio" do
    assert_difference('Remedio.count') do
      post :create, remedio: { composicao: @remedio.composicao, nome: @remedio.nome, preco: @remedio.preco }
    end

    assert_redirected_to remedio_path(assigns(:remedio))
  end

  test "should show remedio" do
    get :show, id: @remedio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @remedio
    assert_response :success
  end

  test "should update remedio" do
    put :update, id: @remedio, remedio: { composicao: @remedio.composicao, nome: @remedio.nome, preco: @remedio.preco }
    assert_redirected_to remedio_path(assigns(:remedio))
  end

  test "should destroy remedio" do
    assert_difference('Remedio.count', -1) do
      delete :destroy, id: @remedio
    end

    assert_redirected_to remedios_path
  end
end
