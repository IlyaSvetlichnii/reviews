require 'test_helper'

class EntertainmentVenuesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get entertainment_venues_index_url
    assert_response :success
  end

  test "should get show" do
    get entertainment_venues_show_url
    assert_response :success
  end

  test "should get new" do
    get entertainment_venues_new_url
    assert_response :success
  end

end
