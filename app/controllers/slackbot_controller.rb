class SlackbotController < ApplicationController

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

  def expense
  end

  def install
  
  end

  private
  def valid_slack_token?
    params['token'] == ENV["SLACK_VERIFICATION_TOKEN"]
  end
end
