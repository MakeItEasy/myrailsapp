require 'test_helper'

class UserFlowsTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "login and browse site" do
    get '/auth/login'
    assert_response :success

    post_via_redirect "/auth/login", :email => 'rugang6891@gmail.com', :password => '111111'
    assert_equal '/user/dashboard/index', path
  end
end
