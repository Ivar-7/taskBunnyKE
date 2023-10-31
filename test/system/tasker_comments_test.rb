require "application_system_test_case"

class TaskerCommentsTest < ApplicationSystemTestCase
  setup do
    @tasker_comment = tasker_comments(:one)
  end

  test "visiting the index" do
    visit tasker_comments_url
    assert_selector "h1", text: "Tasker comments"
  end

  test "should create tasker comment" do
    visit tasker_comments_url
    click_on "New tasker comment"

    fill_in "Comment", with: @tasker_comment.comment
    fill_in "Rating", with: @tasker_comment.rating
    fill_in "Tasker", with: @tasker_comment.tasker_id
    fill_in "User", with: @tasker_comment.user_id
    click_on "Create Tasker comment"

    assert_text "Tasker comment was successfully created"
    click_on "Back"
  end

  test "should update Tasker comment" do
    visit tasker_comment_url(@tasker_comment)
    click_on "Edit this tasker comment", match: :first

    fill_in "Comment", with: @tasker_comment.comment
    fill_in "Rating", with: @tasker_comment.rating
    fill_in "Tasker", with: @tasker_comment.tasker_id
    fill_in "User", with: @tasker_comment.user_id
    click_on "Update Tasker comment"

    assert_text "Tasker comment was successfully updated"
    click_on "Back"
  end

  test "should destroy Tasker comment" do
    visit tasker_comment_url(@tasker_comment)
    click_on "Destroy this tasker comment", match: :first

    assert_text "Tasker comment was successfully destroyed"
  end
end
