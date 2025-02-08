require "test_helper"

class CorrespondingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @corresponding = correspondings(:one)
  end

  test "should get index" do
    get correspondings_url, as: :json
    assert_response :success
  end

  test "should create corresponding" do
    assert_difference("Corresponding.count") do
      post correspondings_url, params: { corresponding: { name: @corresponding.name } }, as: :json
    end

    assert_response :created
  end

  test "should show corresponding" do
    get corresponding_url(@corresponding), as: :json
    assert_response :success
  end

  test "should update corresponding" do
    patch corresponding_url(@corresponding), params: { corresponding: { name: @corresponding.name } }, as: :json
    assert_response :success
  end

  test "should destroy corresponding" do
    assert_difference("Corresponding.count", -1) do
      delete corresponding_url(@corresponding), as: :json
    end

    assert_response :no_content
  end
end
