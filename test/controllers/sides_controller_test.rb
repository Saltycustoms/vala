require 'test_helper'

class SidesControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get sides_edit_url
    assert_response :success
  end

  test "should get update" do
    get sides_update_url
    assert_response :success
  end

end
