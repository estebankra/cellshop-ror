require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get registers" do
    get users_registers_url
    assert_response :success
  end

  test "should get level" do
    get users_level_url
    assert_response :success
  end

end
