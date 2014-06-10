require 'test_helper'

class SeatCategoriesControllerTest < ActionController::TestCase
  setup do
    @seat_category = seat_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:seat_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create seat_category" do
    assert_difference('SeatCategory.count') do
      post :create, seat_category: { : @seat_category., name: @seat_category.name }
    end

    assert_redirected_to seat_category_path(assigns(:seat_category))
  end

  test "should show seat_category" do
    get :show, id: @seat_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @seat_category
    assert_response :success
  end

  test "should update seat_category" do
    patch :update, id: @seat_category, seat_category: { : @seat_category., name: @seat_category.name }
    assert_redirected_to seat_category_path(assigns(:seat_category))
  end

  test "should destroy seat_category" do
    assert_difference('SeatCategory.count', -1) do
      delete :destroy, id: @seat_category
    end

    assert_redirected_to seat_categories_path
  end
end
