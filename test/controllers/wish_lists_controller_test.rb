require 'test_helper'

class WishListsControllerTest < ActionDispatch::IntegrationTest
  test "should get update" do
    get wish_lists_update_url
    assert_response :success
  end

end
