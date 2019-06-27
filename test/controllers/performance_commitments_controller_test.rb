require 'test_helper'

class PerformanceCommitmentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get performance_commitments_index_url
    assert_response :success
  end

  test "should get create" do
    get performance_commitments_create_url
    assert_response :success
  end

  test "should get new" do
    get performance_commitments_new_url
    assert_response :success
  end

  test "should get destroy" do
    get performance_commitments_destroy_url
    assert_response :success
  end

  test "should get show" do
    get performance_commitments_show_url
    assert_response :success
  end

end
