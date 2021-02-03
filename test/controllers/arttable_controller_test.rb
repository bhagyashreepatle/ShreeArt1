require 'test_helper'

class ArttableControllerTest < ActionDispatch::IntegrationTest
  test "should get add" do
    get arttable_add_url
    assert_response :success
  end

  test "should get delete" do
    get arttable_delete_url
    assert_response :success
  end

  test "should get new" do
    get arttable_new_url
    assert_response :success
  end

  test "should get update" do
    get arttable_update_url
    assert_response :success
  end

  test "should get edit" do
    get arttable_edit_url
    assert_response :success
  end

  test "should get list" do
    get arttable_list_url
    assert_response :success
  end

  test "should get show" do
    get arttable_show_url
    assert_response :success
  end

end
