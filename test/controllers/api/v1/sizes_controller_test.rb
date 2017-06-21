require 'test_helper'

class Api::V1::SizesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_sizes_index_url
    assert_response :success
  end

  test "should get show" do
    get api_v1_sizes_show_url
    assert_response :success
  end

end
