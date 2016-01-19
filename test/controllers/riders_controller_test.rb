require 'test_helper'

class RidersControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end
end
