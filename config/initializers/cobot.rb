Rails.application.config.middleware.use OmniAuth::Builder do
  provider :cobot, ENV.fetch('COBOT_CLIENT_ID'), ENV.fetch('COBOT_CLIENT_SECRET'), scope: 'signin'
end
