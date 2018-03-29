require 'test_helper'

module PolicyManager
  class UserTermsControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    setup do
      @user_term = terms_user_terms(:one)
    end

    test "should get index" do
      get user_terms_url
      assert_response :success
    end

    test "should get new" do
      get new_user_term_url
      assert_response :success
    end

    test "should create user_term" do
      assert_difference('UserTerm.count') do
        post user_terms_url, params: { user_term: {  } }
      end

      assert_redirected_to user_term_url(UserTerm.last)
    end

    test "should show user_term" do
      get user_term_url(@user_term)
      assert_response :success
    end

    test "should get edit" do
      get edit_user_term_url(@user_term)
      assert_response :success
    end

    test "should update user_term" do
      patch user_term_url(@user_term), params: { user_term: {  } }
      assert_redirected_to user_term_url(@user_term)
    end

    test "should destroy user_term" do
      assert_difference('UserTerm.count', -1) do
        delete user_term_url(@user_term)
      end

      assert_redirected_to user_terms_url
    end
  end
end
