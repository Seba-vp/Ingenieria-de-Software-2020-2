require 'test_helper'

class ServiceFeedbacksControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get service_feedbacks_new_url
    assert_response :success
  end

  test "should get create" do
    get service_feedbacks_create_url
    assert_response :success
  end

  test "should get index" do
    get service_feedbacks_index_url
    assert_response :success
  end

  test "should get show" do
    get service_feedbacks_show_url
    assert_response :success
  end

  test "should get edit" do
    get service_feedbacks_edit_url
    assert_response :success
  end

  test "should get update" do
    get service_feedbacks_update_url
    assert_response :success
  end

  test "should get delete" do
    get service_feedbacks_delete_url
    assert_response :success
  end

end
