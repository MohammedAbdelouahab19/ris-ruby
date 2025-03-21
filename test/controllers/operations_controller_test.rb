require "test_helper"

class OperationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @operation = operations(:one)
  end

  test "should get index" do
    get operations_url, as: :json
    assert_response :success
  end

  test "should create operation" do
    assert_difference("Operation.count") do
      post operations_url, params: { operation: { name: @operation.name, operation_type: @operation.operation_type, resource_id: @operation.resource_id } }, as: :json
    end

    assert_response :created
  end

  test "should show operation" do
    get operation_url(@operation), as: :json
    assert_response :success
  end

  test "should update operation" do
    patch operation_url(@operation), params: { operation: { name: @operation.name, operation_type: @operation.operation_type, resource_id: @operation.resource_id } }, as: :json
    assert_response :success
  end

  test "should destroy operation" do
    assert_difference("Operation.count", -1) do
      delete operation_url(@operation), as: :json
    end

    assert_response :no_content
  end
end
