require 'test_helper'

class UserSignUpControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_sign_up_index_url
    assert_response :success
  end

end
