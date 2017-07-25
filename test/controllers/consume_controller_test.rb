require 'test_helper'

class ConsumeControllerTest < ActionDispatch::IntegrationTest
  test "should get list" do
    get consume_list_url
    assert_response :success
  end

end
