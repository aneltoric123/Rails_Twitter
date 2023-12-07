require "application_system_test_case"

class HashtagtweetsTest < ApplicationSystemTestCase
  setup do
    @hashtagtweet = hashtagtweets(:one)
  end

  test "visiting the index" do
    visit hashtagtweets_url
    assert_selector "h1", text: "Hashtagtweets"
  end

  test "should create hashtagtweet" do
    visit hashtagtweets_url
    click_on "New hashtagtweet"

    fill_in "Hashtag", with: @hashtagtweet.hashtag_id
    fill_in "Tweet", with: @hashtagtweet.tweet_id
    click_on "Create Hashtagtweet"

    assert_text "Hashtagtweet was successfully created"
    click_on "Back"
  end

  test "should update Hashtagtweet" do
    visit hashtagtweet_url(@hashtagtweet)
    click_on "Edit this hashtagtweet", match: :first

    fill_in "Hashtag", with: @hashtagtweet.hashtag_id
    fill_in "Tweet", with: @hashtagtweet.tweet_id
    click_on "Update Hashtagtweet"

    assert_text "Hashtagtweet was successfully updated"
    click_on "Back"
  end

  test "should destroy Hashtagtweet" do
    visit hashtagtweet_url(@hashtagtweet)
    click_on "Destroy this hashtagtweet", match: :first

    assert_text "Hashtagtweet was successfully destroyed"
  end
end
