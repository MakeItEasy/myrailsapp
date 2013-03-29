# encoding: UTF-8

require 'test_helper'

class UserFlowsTest < ActionDispatch::IntegrationTest
  setup do
    @user_confirmed = users(:user_confirmed)
    @user_unconfirmed = users(:user_unconfirmed)
  end

  test "login and browse site" do
    get_via_redirect '/user/dashboard/index'
    assert_equal '/auth/login', path

    get '/auth/login'
    assert_response :success

    post_via_redirect user_session_path, :user => {:email => @user_confirmed.email, :password => '123456'}
    assert_equal '/user/dashboard/index', path
    assert_equal flash[:notice], I18n.t('devise.sessions.signed_in')

    get '/user/dashboard/index'
    assert_response :success
  end

  test "should comfirm your account" do
    post_via_redirect user_session_path, :user => {:email => @user_unconfirmed.email, :password => '123456'}
    assert_equal '/auth/login', path
    assert_equal flash[:alert], I18n.t('devise.failure.unconfirmed')
  end
end
