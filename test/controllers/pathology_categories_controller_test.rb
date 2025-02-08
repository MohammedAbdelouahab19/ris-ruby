require "test_helper"

class PathologyCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pathology_category = pathology_categories(:one)
  end

  test "should get index" do
    get pathology_categories_url, as: :json
    assert_response :success
  end

  test "should create pathology_category" do
    assert_difference("PathologyCategory.count") do
      post pathology_categories_url, params: { pathology_category: { name: @pathology_category.name } }, as: :json
    end

    assert_response :created
  end

  test "should show pathology_category" do
    get pathology_category_url(@pathology_category), as: :json
    assert_response :success
  end

  test "should update pathology_category" do
    patch pathology_category_url(@pathology_category), params: { pathology_category: { name: @pathology_category.name } }, as: :json
    assert_response :success
  end

  test "should destroy pathology_category" do
    assert_difference("PathologyCategory.count", -1) do
      delete pathology_category_url(@pathology_category), as: :json
    end

    assert_response :no_content
  end
end
