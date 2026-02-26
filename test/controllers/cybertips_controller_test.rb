require "test_helper"

class CybertipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cybertip = cybertips(:one)
  end

  test "should get index" do
    get cybertips_url
    assert_response :success
  end

  test "should get new" do
    get new_cybertip_url
    assert_response :success
  end

  test "should create cybertip" do
    assert_difference("Cybertip.count") do
      post cybertips_url, params: { cybertip: { content: @cybertip.content, pic: @cybertip.pic, post_id: @cybertip.post_id, title: @cybertip.title, user_id: @cybertip.user_id } }
    end

    assert_redirected_to cybertip_url(Cybertip.last)
  end

  test "should show cybertip" do
    get cybertip_url(@cybertip)
    assert_response :success
  end

  test "should get edit" do
    get edit_cybertip_url(@cybertip)
    assert_response :success
  end

  test "should update cybertip" do
    patch cybertip_url(@cybertip), params: { cybertip: { content: @cybertip.content, pic: @cybertip.pic, post_id: @cybertip.post_id, title: @cybertip.title, user_id: @cybertip.user_id } }
    assert_redirected_to cybertip_url(@cybertip)
  end

  test "should destroy cybertip" do
    assert_difference("Cybertip.count", -1) do
      delete cybertip_url(@cybertip)
    end

    assert_redirected_to cybertips_url
  end
end
