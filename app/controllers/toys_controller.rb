class ToysController < ApplicationController
  @account_sid = ENV['TWILIO_ACCOUNT_ID']
  @auth_token = ENV['TWILIO_AUTH_TOKEN']
  @from = '+16476913440'
  @to = '+16473289458'

  @client = Twilio::REST::Client.new @account_sid, @auth_token

  def index

  end

  def message
    @client.messages.create(
      from: @from,
      to: @to,
      body: "HELLO WORLD"
    )
  end
  

  # bus driver texts location
  # text is forwarded to everyone who is subscribed between x and y time
  # subscriber model will need start and end time 
  # kids sends a message someone from teh website for 
  # instagram text messaging?
end
