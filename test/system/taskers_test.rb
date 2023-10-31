require "application_system_test_case"

class TaskersTest < ApplicationSystemTestCase
  setup do
    @tasker = taskers(:one)
  end

  test "visiting the index" do
    visit taskers_url
    assert_selector "h1", text: "Taskers"
  end

  test "should create tasker" do
    visit taskers_url
    click_on "New tasker"

    fill_in "Description", with: @tasker.description
    fill_in "Location", with: @tasker.location
    fill_in "Name", with: @tasker.name
    fill_in "Phone number", with: @tasker.phone_number
    fill_in "Profile picture", with: @tasker.profile_picture
    fill_in "Rating", with: @tasker.rating
    fill_in "User", with: @tasker.user_id
    click_on "Create Tasker"

    assert_text "Tasker was successfully created"
    click_on "Back"
  end

  test "should update Tasker" do
    visit tasker_url(@tasker)
    click_on "Edit this tasker", match: :first

    fill_in "Description", with: @tasker.description
    fill_in "Location", with: @tasker.location
    fill_in "Name", with: @tasker.name
    fill_in "Phone number", with: @tasker.phone_number
    fill_in "Profile picture", with: @tasker.profile_picture
    fill_in "Rating", with: @tasker.rating
    fill_in "User", with: @tasker.user_id
    click_on "Update Tasker"

    assert_text "Tasker was successfully updated"
    click_on "Back"
  end

  test "should destroy Tasker" do
    visit tasker_url(@tasker)
    click_on "Destroy this tasker", match: :first

    assert_text "Tasker was successfully destroyed"
  end
end
