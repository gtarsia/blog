require "test_helper"

class PostControllerTest < ActionDispatch::IntegrationTest
  test "should get post" do
    get posts_digital_rain_url
    assert_response :success
  end
end
