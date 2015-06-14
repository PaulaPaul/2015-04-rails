require 'test_helper'

class CartItemsControllerTest < ActionController::TestCase
  setup do
    @cart_item = cart_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cart_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cart_item" do
    assert_difference('CartItem.count') do
      post :create, cart_item: { book_id: @cart_item.book_id, quantity: @cart_item.quantity, student_id: @cart_item.student_id }
    end

    assert_redirected_to cart_item_path(assigns(:cart_item))
  end

  test "should show cart_item" do
    get :show, id: @cart_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cart_item
    assert_response :success
  end

  test "should update cart_item" do
    patch :update, id: @cart_item, cart_item: { book_id: @cart_item.book_id, quantity: @cart_item.quantity, student_id: @cart_item.student_id }
    assert_redirected_to cart_item_path(assigns(:cart_item))
  end

  test "should destroy cart_item" do
    assert_difference('CartItem.count', -1) do
      delete :destroy, id: @cart_item
    end

    assert_redirected_to cart_items_path
  end
end
