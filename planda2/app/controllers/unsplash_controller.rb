class UnsplashController < ApplicationController
  Unsplash.configure do |config|
  config.application_id     = "YOUR APPLICATION ID"
  config.application_secret = "YOUR APPLICATION SECRET"
  config.application_redirect_uri = "https://your-application.com/oauth/callback"
  config.utm_source = "alices_terrific_client_app"
end
