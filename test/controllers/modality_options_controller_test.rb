require "test_helper"

class ModalityOptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @modality_option = modality_options(:one)
  end

  test "should get index" do
    get modality_options_url, as: :json
    assert_response :success
  end

  test "should create modality_option" do
    assert_difference("ModalityOption.count") do
      post modality_options_url, params: { modality_option: { name: @modality_option.name } }, as: :json
    end

    assert_response :created
  end

  test "should show modality_option" do
    get modality_option_url(@modality_option), as: :json
    assert_response :success
  end

  test "should update modality_option" do
    patch modality_option_url(@modality_option), params: { modality_option: { name: @modality_option.name } }, as: :json
    assert_response :success
  end

  test "should destroy modality_option" do
    assert_difference("ModalityOption.count", -1) do
      delete modality_option_url(@modality_option), as: :json
    end

    assert_response :no_content
  end
end
