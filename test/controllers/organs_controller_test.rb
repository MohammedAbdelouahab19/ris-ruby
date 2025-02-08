require "test_helper"

class OrgansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @organ = organs(:one)
  end

  test "should get index" do
    get organs_url, as: :json
    assert_response :success
  end

  test "should create organ" do
    assert_difference("Organ.count") do
      post organs_url, params: { organ: { code: @organ.code, name: @organ.name, region_id: @organ.region_id } }, as: :json
    end

    assert_response :created
  end

  test "should show organ" do
    get organ_url(@organ), as: :json
    assert_response :success
  end

  test "should update organ" do
    patch organ_url(@organ), params: { organ: { code: @organ.code, name: @organ.name, region_id: @organ.region_id } }, as: :json
    assert_response :success
  end

  test "should destroy organ" do
    assert_difference("Organ.count", -1) do
      delete organ_url(@organ), as: :json
    end

    assert_response :no_content
  end
end
