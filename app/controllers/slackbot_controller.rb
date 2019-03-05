class SlackbotController < ApplicationController

  def index
    
  end

  def success
    Slack.configure do |config|
      config.token = ENV['SLACK_API_TOKEN']
    end
    client = Slack::Web::Client.new
  
    response = client.oauth_access({
      client_id: ENV['SLACK_CLIENT_ID'],
      client_secret: ENV['SLACK_CLIENT_SECRET'],
      code: params['code']
    })

    client.chat_postMessage(channel: '#joyce-does-things', text: 'Hello <!channel>! I am Joyce-bot and I am here to do neat stuff!', as_user: true)
  end

  def enable_event_challenge
    if params[:type] == 'url_verification'
        render json: {'challenge': params[:challenge] }.to_json
    end
  end

  def about
    if valid_slack_token?
      render json: {"text": "Hello! I'm Joyce Bot. I'm here to have fun and pet your cats! Here are some commands I know: "}.to_json
    end
  end

  def oops
    puts params
    Slack.configure do |config|
      config.token = ENV['SLACK_API_TOKEN']
    end
    client = Slack::Web::Client.new
    if valid_slack_token?
      client.chat_postMessage(channel: '#general', text: params['text'])
    end
  end

  private
  def valid_slack_token?
    params['token'] == ENV["SLACK_VERIFICATION_TOKEN"]
  end
end
