require 'test_helper'

class PerformanceEvaluationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @performance_evaluation = performance_evaluations(:one)
  end

  test "should get index" do
    get performance_evaluations_url
    assert_response :success
  end

  test "should get new" do
    get new_performance_evaluation_url
    assert_response :success
  end

  test "should create performance_evaluation" do
    assert_difference('PerformanceEvaluation.count') do
      post performance_evaluations_url, params: { performance_evaluation: { : @performance_evaluation., due_date: @performance_evaluation.due_date } }
    end

    assert_redirected_to performance_evaluation_url(PerformanceEvaluation.last)
  end

  test "should show performance_evaluation" do
    get performance_evaluation_url(@performance_evaluation)
    assert_response :success
  end

  test "should get edit" do
    get edit_performance_evaluation_url(@performance_evaluation)
    assert_response :success
  end

  test "should update performance_evaluation" do
    patch performance_evaluation_url(@performance_evaluation), params: { performance_evaluation: { : @performance_evaluation., due_date: @performance_evaluation.due_date } }
    assert_redirected_to performance_evaluation_url(@performance_evaluation)
  end

  test "should destroy performance_evaluation" do
    assert_difference('PerformanceEvaluation.count', -1) do
      delete performance_evaluation_url(@performance_evaluation)
    end

    assert_redirected_to performance_evaluations_url
  end
end
