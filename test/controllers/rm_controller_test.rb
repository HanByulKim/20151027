require 'test_helper'

class RmControllerTest < ActionController::TestCase
  test "should get idtimeline" do
    get :idtimeline
    assert_response :success
  end

end
