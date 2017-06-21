require 'test_helper'

class Api::V1::ColorsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_colors_index_url
    assert_response :success
  end

  test "should get new" do
    get api_v1_colors_new_url
    assert_response :success
  end

  test "should get create" do
    get api_v1_colors_create_url
    assert_response :success
  end

  test "should get show" do
    get api_v1_colors_show_url
    assert_response :success
  end

  test "should get edit" do
    get api_v1_colors_edit_url
    assert_response :success
  end

  test "should get update" do
    get api_v1_colors_update_url
    assert_response :success
  end

  test "should get destroy" do
    get api_v1_colors_destroy_url
    assert_response :success
  end

end
