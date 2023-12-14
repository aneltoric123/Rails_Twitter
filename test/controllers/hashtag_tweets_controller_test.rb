require "test_helper"

class HashtagTweetsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get hashtag_tweets_index_url
    assert_response :success
  end
end
