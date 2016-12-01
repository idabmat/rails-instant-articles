require 'test_helper'

class InstantArticlesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get instant_articles_index_url
    assert_response :success
  end

  test "should get show" do
    get instant_articles_show_url
    assert_response :success
  end

end
