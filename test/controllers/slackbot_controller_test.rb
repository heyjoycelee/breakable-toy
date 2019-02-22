require 'test_helper'

class SlackbotControllerTest < ActionDispatch::IntegrationTest
  test "#enable_events_challenge returns challenge parameter" do
    @challenge_params = 
    {
      "token": "Jhj5dZrVaK7wHHjRyZWjbDl",
      "challenge": "3eZbrw1aBm2rZgRNFdxV2595E9CY3gmdALWMmHkvFXO7tYXAYM8P",
      "type": "url_verification"
}.to_json
    post slackbot_enable_event_challenge_path, params: @challenge_params
    assert_response :success
  end

end
