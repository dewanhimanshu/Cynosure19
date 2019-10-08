require 'test_helper'

class BugeventControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bugevent_index_url
    assert_response :success
  end

end
