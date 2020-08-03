require 'test_helper'

class ForherokusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @forheroku = forherokus(:one)
  end

  test "should get index" do
    get forherokus_url
    assert_response :success
  end

  test "should get new" do
    get new_forheroku_url
    assert_response :success
  end

  test "should create forheroku" do
    assert_difference('Forheroku.count') do
      post forherokus_url, params: { forheroku: { textitem__c: @forheroku.textitem__c } }
    end

    assert_redirected_to forheroku_url(Forheroku.last)
  end

  test "should show forheroku" do
    get forheroku_url(@forheroku)
    assert_response :success
  end

  test "should get edit" do
    get edit_forheroku_url(@forheroku)
    assert_response :success
  end

  test "should update forheroku" do
    patch forheroku_url(@forheroku), params: { forheroku: { textitem__c: @forheroku.textitem__c } }
    assert_redirected_to forheroku_url(@forheroku)
  end

  test "should destroy forheroku" do
    assert_difference('Forheroku.count', -1) do
      delete forheroku_url(@forheroku)
    end

    assert_redirected_to forherokus_url
  end
end
