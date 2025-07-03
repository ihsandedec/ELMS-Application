require "test_helper"

class ProgressControllerTest < ActionDispatch::IntegrationTest
  test "should get update" do
    get progress_update_url
    assert_response :success
  end
end
