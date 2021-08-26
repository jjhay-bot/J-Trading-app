require "test_helper"

class Brokers::DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get brokers_dashboard_index_url
    assert_response :success
  end
end
