require 'test_helper'

class AutoservicesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get autoservices_index_url
    assert_response :success
  end

  test "should get new" do
    get autoservices_new_url
    assert_response :success
  end

end
