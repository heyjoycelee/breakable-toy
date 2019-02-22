#require 'slack-ruby-client'
require 'json'

class SlackbotController < ApplicationController
  def enable_event_challenge
    if params[:type] == 'url_verification'
        render json: {'challenge': params[:challenge] }.to_json
    end
  end

  def expense
  end
end
