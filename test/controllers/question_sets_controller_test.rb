require "test_helper"

class QuestionSetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @question_set = question_sets(:one)
  end

  test "should get index" do
    get question_sets_url
    assert_response :success
  end

  test "should get new" do
    get new_question_set_url
    assert_response :success
  end

  test "should create question_set" do
    assert_difference('QuestionSet.count') do
      post question_sets_url, params: { question_set: { percent: @question_set.percent, score: @question_set.score, user_id: @question_set.user_id } }
    end

    assert_redirected_to question_set_url(QuestionSet.last)
  end

  test "should show question_set" do
    get question_set_url(@question_set)
    assert_response :success
  end

  test "should get edit" do
    get edit_question_set_url(@question_set)
    assert_response :success
  end

  test "should update question_set" do
    patch question_set_url(@question_set), params: { question_set: { percent: @question_set.percent, score: @question_set.score, user_id: @question_set.user_id } }
    assert_redirected_to question_set_url(@question_set)
  end

  test "should destroy question_set" do
    assert_difference('QuestionSet.count', -1) do
      delete question_set_url(@question_set)
    end

    assert_redirected_to question_sets_url
  end
end
