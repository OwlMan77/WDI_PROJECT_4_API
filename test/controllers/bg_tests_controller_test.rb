require 'test_helper'

class BgTestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bg_test = bg_tests(:one)
  end

  test "should get index" do
    get bg_tests_url, as: :json
    assert_response :success
  end

  test "should create bg_test" do
    assert_difference('BgTest.count') do
      post bg_tests_url, params: { bg_test: { bg_result: @bg_test.bg_result, date: @bg_test.date, time: @bg_test.time, user_id_id: @bg_test.user_id_id } }, as: :json
    end

    assert_response 201
  end

  test "should show bg_test" do
    get bg_test_url(@bg_test), as: :json
    assert_response :success
  end

  test "should update bg_test" do
    patch bg_test_url(@bg_test), params: { bg_test: { bg_result: @bg_test.bg_result, date: @bg_test.date, time: @bg_test.time, user_id_id: @bg_test.user_id_id } }, as: :json
    assert_response 200
  end

  test "should destroy bg_test" do
    assert_difference('BgTest.count', -1) do
      delete bg_test_url(@bg_test), as: :json
    end

    assert_response 204
  end
end
