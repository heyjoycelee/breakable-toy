Rails.application.routes.draw do
  post 'slackbot/enable_event_challenge' => 'slackbot#enable_event_challenge'
  get 'slackbot/expense'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/message' => 'toys#message'
end
