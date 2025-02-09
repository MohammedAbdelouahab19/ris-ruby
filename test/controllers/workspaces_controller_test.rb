require "test_helper"

class WorkspacesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @workspace = workspaces(:one)
  end

  test "should get index" do
    get workspaces_url, as: :json
    assert_response :success
  end

  test "should create workspace" do
    assert_difference("Workspace.count") do
      post workspaces_url, params: { workspace: { api_key: @workspace.api_key } }, as: :json
    end

    assert_response :created
  end

  test "should show workspace" do
    get workspace_url(@workspace), as: :json
    assert_response :success
  end

  test "should update workspace" do
    patch workspace_url(@workspace), params: { workspace: { api_key: @workspace.api_key } }, as: :json
    assert_response :success
  end

  test "should destroy workspace" do
    assert_difference("Workspace.count", -1) do
      delete workspace_url(@workspace), as: :json
    end

    assert_response :no_content
  end
end
