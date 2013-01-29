require 'test_helper'

class I18n::LocalesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
