require "test_helper"

class AdminControllerTest < ActionDispatch::IntegrationTest
  test "should get name:string" do
    get admin_name:string_url
    assert_response :success
  end
end
