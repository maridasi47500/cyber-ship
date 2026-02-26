require "application_system_test_case"

class CybertipsTest < ApplicationSystemTestCase
  setup do
    @cybertip = cybertips(:one)
  end

  test "visiting the index" do
    visit cybertips_url
    assert_selector "h1", text: "Cybertips"
  end

  test "should create cybertip" do
    visit cybertips_url
    click_on "New cybertip"

    fill_in "Content", with: @cybertip.content
    fill_in "Pic", with: @cybertip.pic
    fill_in "Post", with: @cybertip.post_id
    fill_in "Title", with: @cybertip.title
    fill_in "User", with: @cybertip.user_id
    click_on "Create Cybertip"

    assert_text "Cybertip was successfully created"
    click_on "Back"
  end

  test "should update Cybertip" do
    visit cybertip_url(@cybertip)
    click_on "Edit this cybertip", match: :first

    fill_in "Content", with: @cybertip.content
    fill_in "Pic", with: @cybertip.pic
    fill_in "Post", with: @cybertip.post_id
    fill_in "Title", with: @cybertip.title
    fill_in "User", with: @cybertip.user_id
    click_on "Update Cybertip"

    assert_text "Cybertip was successfully updated"
    click_on "Back"
  end

  test "should destroy Cybertip" do
    visit cybertip_url(@cybertip)
    click_on "Destroy this cybertip", match: :first

    assert_text "Cybertip was successfully destroyed"
  end
end
