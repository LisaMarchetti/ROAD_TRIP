require "test_helper"

class RoadTripsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get road_trips_index_url
    assert_response :success
  end

  test "should get show" do
    get road_trips_show_url
    assert_response :success
  end

  test "should get new" do
    get road_trips_new_url
    assert_response :success
  end

  test "should get create" do
    get road_trips_create_url
    assert_response :success
  end

  test "should get edit" do
    get road_trips_edit_url
    assert_response :success
  end

  test "should get update" do
    get road_trips_update_url
    assert_response :success
  end
end
