require "test_helper"

class LairsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get lairs_index_url
    assert_response :success
  end
end
