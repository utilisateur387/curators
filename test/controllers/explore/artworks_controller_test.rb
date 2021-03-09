require 'test_helper'

class Explore::ArtworksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get explore_artworks_index_url
    assert_response :success
  end

  test "should get show" do
    get explore_artworks_show_url
    assert_response :success
  end

end
