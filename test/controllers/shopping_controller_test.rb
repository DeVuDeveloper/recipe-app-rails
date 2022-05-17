require "test_helper"

class ShoppingControllerTest < ActionDispatch::IntegrationTest
  test "should get list" do
    get shopping_list_url
    assert_response :success
  end
end
