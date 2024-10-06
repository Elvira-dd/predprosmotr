require "test_helper"

class AuthorpageControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get authorpage_index_url
    assert_response :success
  end
end
