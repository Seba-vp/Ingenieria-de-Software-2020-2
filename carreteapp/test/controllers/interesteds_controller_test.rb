require 'test_helper'

class InterestedsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get interesteds_new_url
    assert_response :success
  end

  test "should get create" do
    get interesteds_create_url
    assert_response :success
  end

  test "should get index" do
    get interesteds_index_url
    assert_response :success
  end

  test "should get show" do
    get interesteds_show_url
    assert_response :success
  end

  test "should get edit" do
    get interesteds_edit_url
    assert_response :success
  end

  test "should get update" do
    get interesteds_update_url
    assert_response :success
  end

  test "should get delete" do
    get interesteds_delete_url
    assert_response :success
  end

end
