require 'test_helper'

class ProdutosControllerTest < ActionController::TestCase
  setup do
    @produto = produtos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:produtos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create produto" do
    assert_difference('Produto.count') do
      post :create, produto: { categoria_id: @produto.categoria_id, composicao: @produto.composicao, entrega: @produto.entrega, nome: @produto.nome, preco: @produto.preco, receita: @produto.receita }
    end

    assert_redirected_to produto_path(assigns(:produto))
  end

  test "should show produto" do
    get :show, id: @produto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @produto
    assert_response :success
  end

  test "should update produto" do
    put :update, id: @produto, produto: { categoria_id: @produto.categoria_id, composicao: @produto.composicao, entrega: @produto.entrega, nome: @produto.nome, preco: @produto.preco, receita: @produto.receita }
    assert_redirected_to produto_path(assigns(:produto))
  end

  test "should destroy produto" do
    assert_difference('Produto.count', -1) do
      delete :destroy, id: @produto
    end

    assert_redirected_to produtos_path
  end
end