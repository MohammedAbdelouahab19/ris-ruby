require "test_helper"

class ReportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @report = reports(:one)
  end

  test "should get index" do
    get reports_url, as: :json
    assert_response :success
  end

  test "should create report" do
    assert_difference("Report.count") do
      post reports_url, params: { report: { content: @report.content, examination_id: @report.examination_id, status: @report.status } }, as: :json
    end

    assert_response :created
  end

  test "should show report" do
    get report_url(@report), as: :json
    assert_response :success
  end

  test "should update report" do
    patch report_url(@report), params: { report: { content: @report.content, examination_id: @report.examination_id, status: @report.status } }, as: :json
    assert_response :success
  end

  test "should destroy report" do
    assert_difference("Report.count", -1) do
      delete report_url(@report), as: :json
    end

    assert_response :no_content
  end
end
