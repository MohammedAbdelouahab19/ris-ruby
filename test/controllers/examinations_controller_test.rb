require "test_helper"

class ExaminationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @examination = examinations(:one)
  end

  test "should get index" do
    get examinations_url, as: :json
    assert_response :success
  end

  test "should create examination" do
    assert_difference("Examination.count") do
      post examinations_url, params: { examination: { Reanimator_id: @examination.Reanimator_id, convention_id: @examination.convention_id, corresponding_id: @examination.corresponding_id, note: @examination.note, nurse_id: @examination.nurse_id, patientWeight: @examination.patientWeight, patient_id: @examination.patient_id, prescriber_id: @examination.prescriber_id, radiologist_id: @examination.radiologist_id, service_id: @examination.service_id, technical_id: @examination.technical_id } }, as: :json
    end

    assert_response :created
  end

  test "should show examination" do
    get examination_url(@examination), as: :json
    assert_response :success
  end

  test "should update examination" do
    patch examination_url(@examination), params: { examination: { Reanimator_id: @examination.Reanimator_id, convention_id: @examination.convention_id, corresponding_id: @examination.corresponding_id, note: @examination.note, nurse_id: @examination.nurse_id, patientWeight: @examination.patientWeight, patient_id: @examination.patient_id, prescriber_id: @examination.prescriber_id, radiologist_id: @examination.radiologist_id, service_id: @examination.service_id, technical_id: @examination.technical_id } }, as: :json
    assert_response :success
  end

  test "should destroy examination" do
    assert_difference("Examination.count", -1) do
      delete examination_url(@examination), as: :json
    end

    assert_response :no_content
  end
end
