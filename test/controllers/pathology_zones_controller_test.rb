require "test_helper"

class PathologyZonesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pathology_zone = pathology_zones(:one)
  end

  test "should get index" do
    get pathology_zones_url, as: :json
    assert_response :success
  end

  test "should create pathology_zone" do
    assert_difference("PathologyZone.count") do
      post pathology_zones_url, params: { pathology_zone: { name: @pathology_zone.name } }, as: :json
    end

    assert_response :created
  end

  test "should show pathology_zone" do
    get pathology_zone_url(@pathology_zone), as: :json
    assert_response :success
  end

  test "should update pathology_zone" do
    patch pathology_zone_url(@pathology_zone), params: { pathology_zone: { name: @pathology_zone.name } }, as: :json
    assert_response :success
  end

  test "should destroy pathology_zone" do
    assert_difference("PathologyZone.count", -1) do
      delete pathology_zone_url(@pathology_zone), as: :json
    end

    assert_response :no_content
  end
end
