OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do

  provider :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']
  #provider :jira, ENV['JIRA_KEY'], ENV['JIRA_SECRET']
end