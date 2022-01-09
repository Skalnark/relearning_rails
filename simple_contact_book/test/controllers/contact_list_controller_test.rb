require "test_helper"

class ContactListControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get contact_list_new_url
    assert_response :success
  end

  test "should get create" do
    get contact_list_create_url
    assert_response :success
  end

  test "should get update" do
    get contact_list_update_url
    assert_response :success
  end

  test "should get edit" do
    get contact_list_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get contact_list_destroy_url
    assert_response :success
  end

  test "should get show" do
    get contact_list_show_url
    assert_response :success
  end
end
