require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get top_users" do
    get users_top_users_url
    assert_response :success
  end

  test "should get followers_summary" do
    get users_followers_summary_url
    assert_response :success
  end
end
