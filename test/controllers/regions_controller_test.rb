require "test_helper"

class RegionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @region = regions(:one)
  end

  test "should get index" do
    get regions_url, as: :json
    assert_response :success
  end

  test "should create region" do
    assert_difference("Region.count") do
      post regions_url, params: { region: { code: @region.code, direction: @region.direction, name: @region.name } }, as: :json
    end

    assert_response :created
  end

  test "should show region" do
    get region_url(@region), as: :json
    assert_response :success
  end

  test "should update region" do
    patch region_url(@region), params: { region: { code: @region.code, direction: @region.direction, name: @region.name } }, as: :json
    assert_response :success
  end

  test "should destroy region" do
    assert_difference("Region.count", -1) do
      delete region_url(@region), as: :json
    end

    assert_response :no_content
  end
end
