require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get aboutus" do
    get :aboutus
    assert_response :success
  end

  test "should get calendar" do
    get :calendar
    assert_response :success
  end

  test "should get contactus" do
    get :contactus
    assert_response :success
  end

  test "should get rules" do
    get :rules
    assert_response :success
  end

  test "should get sponsors" do
    get :sponsors
    assert_response :success
  end

  test "should get team" do
    get :team
    assert_response :success
  end

  test "should get upcoming" do
    get :upcoming
    assert_response :success
  end

end
