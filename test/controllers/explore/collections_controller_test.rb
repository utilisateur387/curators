require 'test_helper'

class Explore::CollectionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get explore_collections_index_url
    assert_response :success
  end

  test "should get show" do
    get explore_collections_show_url
    assert_response :success
  end

end
