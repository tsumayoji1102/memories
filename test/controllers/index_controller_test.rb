require 'test_helper'

class IndexControllerTest < ActionDispatch::IntegrationTest
  test "should get post" do
    get index_post_url
    assert_response :success
  end

end
