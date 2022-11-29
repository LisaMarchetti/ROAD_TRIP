require "test_helper"

class ParticipationsControllerTest < ActionDispatch::IntegrationTest
  test "should get validate" do
    get participations_validate_url
    assert_response :success
  end
end
