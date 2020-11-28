require 'test_helper'

class ChinemasControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get chinemas_create_url
    assert_response :success
  end

  test "should get new" do
    get chinemas_new_url
    assert_response :success
  end

  test "should get show" do
    get chinemas_show_url
    assert_response :success
  end

  test "should get index" do
    get chinemas_index_url
    assert_response :success
  end

  test "should get edit" do
    get chinemas_edit_url
    assert_response :success
  end

  test "should get update" do
    get chinemas_update_url
    assert_response :success
  end

  test "should get destroy" do
    get chinemas_destroy_url
    assert_response :success
  end

end
