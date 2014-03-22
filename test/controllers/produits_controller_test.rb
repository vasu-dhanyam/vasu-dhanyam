require 'test_helper'

class ProduitsControllerTest < ActionController::TestCase
  setup do
    @produit = produits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:produits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create produit" do
    assert_difference('Produit.count') do
      post :create, produit: { available: @produit.available, measure: @produit.measure, name: @produit.name, price: @produit.price, quantity: @produit.quantity, status: @produit.status }
    end

    assert_redirected_to produit_path(assigns(:produit))
  end

  test "should show produit" do
    get :show, id: @produit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @produit
    assert_response :success
  end

  test "should update produit" do
    patch :update, id: @produit, produit: { available: @produit.available, measure: @produit.measure, name: @produit.name, price: @produit.price, quantity: @produit.quantity, status: @produit.status }
    assert_redirected_to produit_path(assigns(:produit))
  end

  test "should destroy produit" do
    assert_difference('Produit.count', -1) do
      delete :destroy, id: @produit
    end

    assert_redirected_to produits_path
  end
end
