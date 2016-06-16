require 'test_helper'

class CsecretaryControllerTest < ActionController::TestCase
  test "should get read" do
    get :read
    assert_response :success
  end

  test "should get list" do
    get :list
    assert_response :success
  end

  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get modify" do
    get :modify
    assert_response :success
  end

  test "should get delete" do
    get :delete
    assert_response :success
  end

  test "should get updateview" do
    get :updateview
    assert_response :success
  end

end
