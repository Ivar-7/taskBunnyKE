require "test_helper"

class TaskersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tasker = taskers(:one)
  end

  test "should get index" do
    get taskers_url
    assert_response :success
  end

  test "should get new" do
    get new_tasker_url
    assert_response :success
  end

  test "should create tasker" do
    assert_difference("Tasker.count") do
      post taskers_url, params: { tasker: { description: @tasker.description, location: @tasker.location, name: @tasker.name, phone_number: @tasker.phone_number, profile_picture: @tasker.profile_picture, rating: @tasker.rating, user_id: @tasker.user_id } }
    end

    assert_redirected_to tasker_url(Tasker.last)
  end

  test "should show tasker" do
    get tasker_url(@tasker)
    assert_response :success
  end

  test "should get edit" do
    get edit_tasker_url(@tasker)
    assert_response :success
  end

  test "should update tasker" do
    patch tasker_url(@tasker), params: { tasker: { description: @tasker.description, location: @tasker.location, name: @tasker.name, phone_number: @tasker.phone_number, profile_picture: @tasker.profile_picture, rating: @tasker.rating, user_id: @tasker.user_id } }
    assert_redirected_to tasker_url(@tasker)
  end

  test "should destroy tasker" do
    assert_difference("Tasker.count", -1) do
      delete tasker_url(@tasker)
    end

    assert_redirected_to taskers_url
  end
end
