require 'test_helper'

class AtmControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

end
