require 'test_helper'

class ColumnsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get columns_index_url
    assert_response :success
  end

  test "should get show" do
    get columns_show_url
    assert_response :success
  end

  test "should get new" do
    get columns_new_url
    assert_response :success
  end

  test "should get create" do
    get columns_create_url
    assert_response :success
  end

  test "should get edit" do
    get columns_edit_url
    assert_response :success
  end

  test "should get update" do
    get columns_update_url
    assert_response :success
  end

  test "should get delete" do
    get columns_delete_url
    assert_response :success
  end

end
