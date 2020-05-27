require 'test_helper'

class WeetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @weet = weets(:one)
  end

  test "should get index" do
    get weets_url
    assert_response :success
  end

  test "should get new" do
    get new_weet_url
    assert_response :success
  end

  test "should create weet" do
    assert_difference('Weet.count') do
      post weets_url, params: { weet: { weet: @weet.weet } }
    end

    assert_redirected_to weet_url(Weet.last)
  end

  test "should show weet" do
    get weet_url(@weet)
    assert_response :success
  end

  test "should get edit" do
    get edit_weet_url(@weet)
    assert_response :success
  end

  test "should update weet" do
    patch weet_url(@weet), params: { weet: { weet: @weet.weet } }
    assert_redirected_to weet_url(@weet)
  end

  test "should destroy weet" do
    assert_difference('Weet.count', -1) do
      delete weet_url(@weet)
    end

    assert_redirected_to weets_url
  end
end
