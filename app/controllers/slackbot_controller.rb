class SlackbotController < ApplicationController

  def enable_event_challenge
    if params[:type] == 'url_verification'
        render json: {'challenge': params[:challenge] }.to_json
    end
  end

  def about
    render json: {"text": "Hello! I'm Joyce Bot. I'm here to have fun and pet your cats! Here are some commands I know: "}.to_json
  end

  def expense
  end

  private
  def valid_slack_token?
    params[:token] == ENV["SLACK_SIGNING_SECRET"]
  end
end
