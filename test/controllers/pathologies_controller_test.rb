require "test_helper"

class PathologiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pathology = pathologies(:one)
  end

  test "should get index" do
    get pathologies_url, as: :json
    assert_response :success
  end

  test "should create pathology" do
    assert_difference("Pathology.count") do
      post pathologies_url, params: { pathology: { description: @pathology.description, name: @pathology.name, pathology_category_id: @pathology.pathology_category_id, pathology_zone_id: @pathology.pathology_zone_id } }, as: :json
    end

    assert_response :created
  end

  test "should show pathology" do
    get pathology_url(@pathology), as: :json
    assert_response :success
  end

  test "should update pathology" do
    patch pathology_url(@pathology), params: { pathology: { description: @pathology.description, name: @pathology.name, pathology_category_id: @pathology.pathology_category_id, pathology_zone_id: @pathology.pathology_zone_id } }, as: :json
    assert_response :success
  end

  test "should destroy pathology" do
    assert_difference("Pathology.count", -1) do
      delete pathology_url(@pathology), as: :json
    end

    assert_response :no_content
  end
end
