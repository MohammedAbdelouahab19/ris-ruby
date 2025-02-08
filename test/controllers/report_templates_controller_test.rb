require "test_helper"

class ReportTemplatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @report_template = report_templates(:one)
  end

  test "should get index" do
    get report_templates_url, as: :json
    assert_response :success
  end

  test "should create report_template" do
    assert_difference("ReportTemplate.count") do
      post report_templates_url, params: { report_template: { content: @report_template.content, room_id: @report_template.room_id, title: @report_template.title } }, as: :json
    end

    assert_response :created
  end

  test "should show report_template" do
    get report_template_url(@report_template), as: :json
    assert_response :success
  end

  test "should update report_template" do
    patch report_template_url(@report_template), params: { report_template: { content: @report_template.content, room_id: @report_template.room_id, title: @report_template.title } }, as: :json
    assert_response :success
  end

  test "should destroy report_template" do
    assert_difference("ReportTemplate.count", -1) do
      delete report_template_url(@report_template), as: :json
    end

    assert_response :no_content
  end
end
