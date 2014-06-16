require 'test_helper'

class ItinerariesControllerTest < ActionController::TestCase
  setup do
    @itinerary = itineraries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:itineraries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create itinerary" do
    assert_difference('Itinerary.count') do
      post :create, itinerary: { airplane_id: @itinerary.airplane_id, arrival_date: @itinerary.arrival_date, arrival_time: @itinerary.arrival_time, departure_date: @itinerary.departure_date, departure_time: @itinerary.departure_time, destiny_city_id: @itinerary.destiny_city_id, origin_city_id: @itinerary.origin_city_id }
    end

    assert_redirected_to itinerary_path(assigns(:itinerary))
  end

  test "should show itinerary" do
    get :show, id: @itinerary
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @itinerary
    assert_response :success
  end

  test "should update itinerary" do
    patch :update, id: @itinerary, itinerary: { airplane_id: @itinerary.airplane_id, arrival_date: @itinerary.arrival_date, arrival_time: @itinerary.arrival_time, departure_date: @itinerary.departure_date, departure_time: @itinerary.departure_time, destiny_city_id: @itinerary.destiny_city_id, origin_city_id: @itinerary.origin_city_id }
    assert_redirected_to itinerary_path(assigns(:itinerary))
  end

  test "should destroy itinerary" do
    assert_difference('Itinerary.count', -1) do
      delete :destroy, id: @itinerary
    end

    assert_redirected_to itineraries_path
  end
end
