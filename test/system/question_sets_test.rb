require "application_system_test_case"

class QuestionSetsTest < ApplicationSystemTestCase
  setup do
    @question_set = question_sets(:one)
  end

  test "visiting the index" do
    visit question_sets_url
    assert_selector "h1", text: "Question Sets"
  end

  test "creating a Question set" do
    visit question_sets_url
    click_on "New Question Set"

    fill_in "Percent", with: @question_set.percent
    fill_in "Score", with: @question_set.score
    fill_in "User", with: @question_set.user_id
    click_on "Create Question set"

    assert_text "Question set was successfully created"
    click_on "Back"
  end

  test "updating a Question set" do
    visit question_sets_url
    click_on "Edit", match: :first

    fill_in "Percent", with: @question_set.percent
    fill_in "Score", with: @question_set.score
    fill_in "User", with: @question_set.user_id
    click_on "Update Question set"

    assert_text "Question set was successfully updated"
    click_on "Back"
  end

  test "destroying a Question set" do
    visit question_sets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Question set was successfully destroyed"
  end
end
