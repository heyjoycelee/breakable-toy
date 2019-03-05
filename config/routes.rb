Rails.application.routes.draw do
  # Slack API
  get 'slackbot/index' => 'slackbot#index'
  get 'slackbot/success' => 'slackbot#success'
  post 'slackbot/enable_event_challenge' => 'slackbot#enable_event_challenge'
  post 'slackbot/about' => 'slackbot#about'
  post 'slackbot/expense' => 'slackbot#expense'
  
  # Twilio API
  get '/message' => 'toys#message'
end
