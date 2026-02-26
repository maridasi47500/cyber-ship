require "application_system_test_case"

class JobpostsTest < ApplicationSystemTestCase
  setup do
    @jobpost = jobposts(:one)
  end

  test "visiting the index" do
    visit jobposts_url
    assert_selector "h1", text: "Jobposts"
  end

  test "should create jobpost" do
    visit jobposts_url
    click_on "New jobpost"

    fill_in "Content", with: @jobpost.content
    fill_in "Pic", with: @jobpost.pic
    fill_in "Title", with: @jobpost.title
    fill_in "User", with: @jobpost.user_id
    click_on "Create Jobpost"

    assert_text "Jobpost was successfully created"
    click_on "Back"
  end

  test "should update Jobpost" do
    visit jobpost_url(@jobpost)
    click_on "Edit this jobpost", match: :first

    fill_in "Content", with: @jobpost.content
    fill_in "Pic", with: @jobpost.pic
    fill_in "Title", with: @jobpost.title
    fill_in "User", with: @jobpost.user_id
    click_on "Update Jobpost"

    assert_text "Jobpost was successfully updated"
    click_on "Back"
  end

  test "should destroy Jobpost" do
    visit jobpost_url(@jobpost)
    click_on "Destroy this jobpost", match: :first

    assert_text "Jobpost was successfully destroyed"
  end
end
