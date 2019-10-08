require 'test_helper'

class HackathonControllerTest < ActionDispatch::IntegrationTest
  test "should get register" do
    get hackathon_register_url
    assert_response :success
  end

end
