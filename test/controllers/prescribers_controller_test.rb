require "test_helper"

class PrescribersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prescriber = prescribers(:one)
  end

  test "should get index" do
    get prescribers_url, as: :json
    assert_response :success
  end

  test "should create prescriber" do
    assert_difference("Prescriber.count") do
      post prescribers_url, params: { prescriber: { address: @prescriber.address, email: @prescriber.email, first_name: @prescriber.first_name, last_name: @prescriber.last_name, phone_number: @prescriber.phone_number, service_id: @prescriber.service_id, speciality_id: @prescriber.speciality_id, structure_id: @prescriber.structure_id, title: @prescriber.title } }, as: :json
    end

    assert_response :created
  end

  test "should show prescriber" do
    get prescriber_url(@prescriber), as: :json
    assert_response :success
  end

  test "should update prescriber" do
    patch prescriber_url(@prescriber), params: { prescriber: { address: @prescriber.address, email: @prescriber.email, first_name: @prescriber.first_name, last_name: @prescriber.last_name, phone_number: @prescriber.phone_number, service_id: @prescriber.service_id, speciality_id: @prescriber.speciality_id, structure_id: @prescriber.structure_id, title: @prescriber.title } }, as: :json
    assert_response :success
  end

  test "should destroy prescriber" do
    assert_difference("Prescriber.count", -1) do
      delete prescriber_url(@prescriber), as: :json
    end

    assert_response :no_content
  end
end
