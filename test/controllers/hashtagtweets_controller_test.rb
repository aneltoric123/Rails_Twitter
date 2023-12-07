require "test_helper"

class HashtagtweetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hashtagtweet = hashtagtweets(:one)
  end

  test "should get index" do
    get hashtagtweets_url
    assert_response :success
  end

  test "should get new" do
    get new_hashtagtweet_url
    assert_response :success
  end

  test "should create hashtagtweet" do
    assert_difference("Hashtagtweet.count") do
      post hashtagtweets_url, params: { hashtagtweet: { hashtag_id: @hashtagtweet.hashtag_id, tweet_id: @hashtagtweet.tweet_id } }
    end

    assert_redirected_to hashtagtweet_url(Hashtagtweet.last)
  end

  test "should show hashtagtweet" do
    get hashtagtweet_url(@hashtagtweet)
    assert_response :success
  end

  test "should get edit" do
    get edit_hashtagtweet_url(@hashtagtweet)
    assert_response :success
  end

  test "should update hashtagtweet" do
    patch hashtagtweet_url(@hashtagtweet), params: { hashtagtweet: { hashtag_id: @hashtagtweet.hashtag_id, tweet_id: @hashtagtweet.tweet_id } }
    assert_redirected_to hashtagtweet_url(@hashtagtweet)
  end

  test "should destroy hashtagtweet" do
    assert_difference("Hashtagtweet.count", -1) do
      delete hashtagtweet_url(@hashtagtweet)
    end

    assert_redirected_to hashtagtweets_url
  end
end
