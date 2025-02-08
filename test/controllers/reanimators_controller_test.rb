require "test_helper"

class ReanimatorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reanimator = reanimators(:one)
  end

  test "should get index" do
    get reanimators_url, as: :json
    assert_response :success
  end

  test "should create reanimator" do
    assert_difference("Reanimator.count") do
      post reanimators_url, params: { reanimator: { first_name: @reanimator.first_name, last_name: @reanimator.last_name } }, as: :json
    end

    assert_response :created
  end

  test "should show reanimator" do
    get reanimator_url(@reanimator), as: :json
    assert_response :success
  end

  test "should update reanimator" do
    patch reanimator_url(@reanimator), params: { reanimator: { first_name: @reanimator.first_name, last_name: @reanimator.last_name } }, as: :json
    assert_response :success
  end

  test "should destroy reanimator" do
    assert_difference("Reanimator.count", -1) do
      delete reanimator_url(@reanimator), as: :json
    end

    assert_response :no_content
  end
end
