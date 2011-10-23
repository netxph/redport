require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get prototype" do
    get :prototype
    assert_response :success
  end

  test "should get atwork" do
    get :atwork
    assert_response :success
  end

end
