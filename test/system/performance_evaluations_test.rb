require "application_system_test_case"

class PerformanceEvaluationsTest < ApplicationSystemTestCase
  setup do
    @performance_evaluation = performance_evaluations(:one)
  end

  test "visiting the index" do
    visit performance_evaluations_url
    assert_selector "h1", text: "Performance Evaluations"
  end

  test "creating a Performance evaluation" do
    visit performance_evaluations_url
    click_on "New Performance Evaluation"

    fill_in "", with: @performance_evaluation.
    fill_in "Due date", with: @performance_evaluation.due_date
    click_on "Create Performance evaluation"

    assert_text "Performance evaluation was successfully created"
    click_on "Back"
  end

  test "updating a Performance evaluation" do
    visit performance_evaluations_url
    click_on "Edit", match: :first

    fill_in "", with: @performance_evaluation.
    fill_in "Due date", with: @performance_evaluation.due_date
    click_on "Update Performance evaluation"

    assert_text "Performance evaluation was successfully updated"
    click_on "Back"
  end

  test "destroying a Performance evaluation" do
    visit performance_evaluations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Performance evaluation was successfully destroyed"
  end
end
