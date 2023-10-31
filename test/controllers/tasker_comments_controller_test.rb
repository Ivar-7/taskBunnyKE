require "test_helper"

class TaskerCommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tasker_comment = tasker_comments(:one)
  end

  test "should get index" do
    get tasker_comments_url
    assert_response :success
  end

  test "should get new" do
    get new_tasker_comment_url
    assert_response :success
  end

  test "should create tasker_comment" do
    assert_difference("TaskerComment.count") do
      post tasker_comments_url, params: { tasker_comment: { comment: @tasker_comment.comment, rating: @tasker_comment.rating, tasker_id: @tasker_comment.tasker_id, user_id: @tasker_comment.user_id } }
    end

    assert_redirected_to tasker_comment_url(TaskerComment.last)
  end

  test "should show tasker_comment" do
    get tasker_comment_url(@tasker_comment)
    assert_response :success
  end

  test "should get edit" do
    get edit_tasker_comment_url(@tasker_comment)
    assert_response :success
  end

  test "should update tasker_comment" do
    patch tasker_comment_url(@tasker_comment), params: { tasker_comment: { comment: @tasker_comment.comment, rating: @tasker_comment.rating, tasker_id: @tasker_comment.tasker_id, user_id: @tasker_comment.user_id } }
    assert_redirected_to tasker_comment_url(@tasker_comment)
  end

  test "should destroy tasker_comment" do
    assert_difference("TaskerComment.count", -1) do
      delete tasker_comment_url(@tasker_comment)
    end

    assert_redirected_to tasker_comments_url
  end
end
