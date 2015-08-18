require 'test_helper'

class PartesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
