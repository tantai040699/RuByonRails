require 'test_helper'

class FeedAlbumsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get feed_albums_index_url
    assert_response :success
  end

end
