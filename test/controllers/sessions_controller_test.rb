require "test_helper"

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get sessions_create_url
    assert_response :success
  end

  test "should get logged_in" do
    get sessions_logged_in_url
    assert_response :success
  end

  test "should get log_out" do
    get sessions_log_out_url
    assert_response :success
  end
end
