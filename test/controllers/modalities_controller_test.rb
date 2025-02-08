require "test_helper"

class ModalitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @modality = modalities(:one)
  end

  test "should get index" do
    get modalities_url, as: :json
    assert_response :success
  end

  test "should create modality" do
    assert_difference("Modality.count") do
      post modalities_url, params: { modality: { code: @modality.code } }, as: :json
    end

    assert_response :created
  end

  test "should show modality" do
    get modality_url(@modality), as: :json
    assert_response :success
  end

  test "should update modality" do
    patch modality_url(@modality), params: { modality: { code: @modality.code } }, as: :json
    assert_response :success
  end

  test "should destroy modality" do
    assert_difference("Modality.count", -1) do
      delete modality_url(@modality), as: :json
    end

    assert_response :no_content
  end
end
