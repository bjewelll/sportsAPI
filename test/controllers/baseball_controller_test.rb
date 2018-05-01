require 'test_helper'

class BaseballControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get baseball_index_url
    assert_response :success
  end

  test "should get show" do
    get baseball_show_url
    assert_response :success
  end

end
